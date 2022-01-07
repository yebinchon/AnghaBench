
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmaqueue; } ;
struct iss_ipipeif_device {TYPE_1__ video_out; } ;
struct iss_buffer {int iss_addr; } ;


 int ipipeif_set_outaddr (struct iss_ipipeif_device*,int ) ;
 int ipipeif_write_enable (struct iss_ipipeif_device*,int) ;
 scalar_t__ list_empty (int *) ;
 struct iss_buffer* omap4iss_video_buffer_next (TYPE_1__*) ;

__attribute__((used)) static void ipipeif_isr_buffer(struct iss_ipipeif_device *ipipeif)
{
 struct iss_buffer *buffer;





 if (list_empty(&ipipeif->video_out.dmaqueue))
  return;

 ipipeif_write_enable(ipipeif, 0);

 buffer = omap4iss_video_buffer_next(&ipipeif->video_out);
 if (!buffer)
  return;

 ipipeif_set_outaddr(ipipeif, buffer->iss_addr);

 ipipeif_write_enable(ipipeif, 1);
}
