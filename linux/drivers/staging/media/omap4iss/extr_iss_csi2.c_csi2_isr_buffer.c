
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_csi2_device {int video_out; } ;
struct iss_buffer {int iss_addr; } ;


 int csi2_ctx_enable (struct iss_csi2_device*,int ,int) ;
 int csi2_set_outaddr (struct iss_csi2_device*,int ) ;
 struct iss_buffer* omap4iss_video_buffer_next (int *) ;

__attribute__((used)) static void csi2_isr_buffer(struct iss_csi2_device *csi2)
{
 struct iss_buffer *buffer;

 csi2_ctx_enable(csi2, 0, 0);

 buffer = omap4iss_video_buffer_next(&csi2->video_out);





 if (!buffer)
  return;

 csi2_set_outaddr(csi2, buffer->iss_addr);
 csi2_ctx_enable(csi2, 0, 1);
}
