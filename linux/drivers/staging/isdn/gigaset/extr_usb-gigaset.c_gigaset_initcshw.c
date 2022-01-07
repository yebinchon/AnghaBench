
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_cardstate {int* bchars; int * read_urb; int * bulk_out_urb; int * bulk_out_buffer; } ;
struct TYPE_2__ {struct usb_cardstate* usb; } ;
struct cardstate {int write_tasklet; TYPE_1__ hw; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gigaset_modem_fill ;
 struct usb_cardstate* kmalloc (int,int ) ;
 int pr_err (char*) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int gigaset_initcshw(struct cardstate *cs)
{
 struct usb_cardstate *ucs;

 cs->hw.usb = ucs =
  kmalloc(sizeof(struct usb_cardstate), GFP_KERNEL);
 if (!ucs) {
  pr_err("out of memory\n");
  return -ENOMEM;
 }

 ucs->bchars[0] = 0;
 ucs->bchars[1] = 0;
 ucs->bchars[2] = 0;
 ucs->bchars[3] = 0;
 ucs->bchars[4] = 0x11;
 ucs->bchars[5] = 0x13;
 ucs->bulk_out_buffer = ((void*)0);
 ucs->bulk_out_urb = ((void*)0);
 ucs->read_urb = ((void*)0);
 tasklet_init(&cs->write_tasklet,
       gigaset_modem_fill, (unsigned long) cs);

 return 0;
}
