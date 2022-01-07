
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct isp1760_qtd {scalar_t__ length; int payload_addr; } ;
struct isp1760_hcd {TYPE_1__* memory_pool; } ;
struct TYPE_2__ {scalar_t__ size; int start; scalar_t__ free; } ;


 int BLOCKS ;
 int WARN_ON (int ) ;
 struct isp1760_hcd* hcd_to_priv (struct usb_hcd*) ;

__attribute__((used)) static void alloc_mem(struct usb_hcd *hcd, struct isp1760_qtd *qtd)
{
 struct isp1760_hcd *priv = hcd_to_priv(hcd);
 int i;

 WARN_ON(qtd->payload_addr);

 if (!qtd->length)
  return;

 for (i = 0; i < BLOCKS; i++) {
  if (priv->memory_pool[i].size >= qtd->length &&
    priv->memory_pool[i].free) {
   priv->memory_pool[i].free = 0;
   qtd->payload_addr = priv->memory_pool[i].start;
   return;
  }
 }
}
