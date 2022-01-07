
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct async {int mem_usage; TYPE_1__* urb; TYPE_2__* usbm; scalar_t__ cred; int pid; } ;
struct TYPE_4__ {int urb_use_count; } ;
struct TYPE_3__ {int num_sgs; struct async* setup_packet; struct async* transfer_buffer; struct async* sg; } ;


 int dec_usb_memory_use_count (TYPE_2__*,int *) ;
 int kfree (struct async*) ;
 int put_cred (scalar_t__) ;
 int put_pid (int ) ;
 scalar_t__ sg_page (struct async*) ;
 struct async* sg_virt (struct async*) ;
 int usb_free_urb (TYPE_1__*) ;
 int usbfs_decrease_memory_usage (int ) ;

__attribute__((used)) static void free_async(struct async *as)
{
 int i;

 put_pid(as->pid);
 if (as->cred)
  put_cred(as->cred);
 for (i = 0; i < as->urb->num_sgs; i++) {
  if (sg_page(&as->urb->sg[i]))
   kfree(sg_virt(&as->urb->sg[i]));
 }

 kfree(as->urb->sg);
 if (as->usbm == ((void*)0))
  kfree(as->urb->transfer_buffer);
 else
  dec_usb_memory_use_count(as->usbm, &as->usbm->urb_use_count);

 kfree(as->urb->setup_packet);
 usb_free_urb(as->urb);
 usbfs_decrease_memory_usage(as->mem_usage);
 kfree(as);
}
