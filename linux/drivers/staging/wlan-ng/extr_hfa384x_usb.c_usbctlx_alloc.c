
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfa384x_usbctlx {int done; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ in_interrupt () ;
 int init_completion (int *) ;
 struct hfa384x_usbctlx* kzalloc (int,int ) ;

__attribute__((used)) static struct hfa384x_usbctlx *usbctlx_alloc(void)
{
 struct hfa384x_usbctlx *ctlx;

 ctlx = kzalloc(sizeof(*ctlx),
         in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
 if (ctlx)
  init_completion(&ctlx->done);

 return ctlx;
}
