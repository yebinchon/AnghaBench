
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iss_ipipeif_device {int output; int stopping; int wait; } ;


 int IPIPEIF_OUTPUT_MEMORY ;
 int ISP5_IRQ_ISIF_INT (int ) ;
 int ipipeif_isr_buffer (struct iss_ipipeif_device*) ;
 scalar_t__ omap4iss_module_sync_is_stopping (int *,int *) ;

void omap4iss_ipipeif_isr(struct iss_ipipeif_device *ipipeif, u32 events)
{
 if (omap4iss_module_sync_is_stopping(&ipipeif->wait,
          &ipipeif->stopping))
  return;

 if ((events & ISP5_IRQ_ISIF_INT(0)) &&
     (ipipeif->output & IPIPEIF_OUTPUT_MEMORY))
  ipipeif_isr_buffer(ipipeif);
}
