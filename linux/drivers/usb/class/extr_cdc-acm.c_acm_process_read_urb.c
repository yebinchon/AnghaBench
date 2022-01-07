
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int actual_length; int transfer_buffer; } ;
struct acm {int port; } ;


 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string (int *,int ,int ) ;

__attribute__((used)) static void acm_process_read_urb(struct acm *acm, struct urb *urb)
{
 if (!urb->actual_length)
  return;

 tty_insert_flip_string(&acm->port, urb->transfer_buffer,
   urb->actual_length);
 tty_flip_buffer_push(&acm->port);
}
