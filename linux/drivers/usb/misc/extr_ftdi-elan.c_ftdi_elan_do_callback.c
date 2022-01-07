
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_ftdi {int dummy; } ;
struct urb {int dummy; } ;
struct u132_target {int halted; int skipped; int actual; int non_null; int toggle_bits; int error_count; int condition_code; int repeat_number; void (* callback ) (void*,struct urb*,int *,int,int,int,int,int,int,int,int,int) ;int active; void* endp; struct urb* urb; } ;


 void stub1 (void*,struct urb*,int *,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void ftdi_elan_do_callback(struct usb_ftdi *ftdi,
      struct u132_target *target, u8 *buffer, int length)
{
 struct urb *urb = target->urb;
 int halted = target->halted;
 int skipped = target->skipped;
 int actual = target->actual;
 int non_null = target->non_null;
 int toggle_bits = target->toggle_bits;
 int error_count = target->error_count;
 int condition_code = target->condition_code;
 int repeat_number = target->repeat_number;
 void (*callback) (void *, struct urb *, u8 *, int, int, int, int, int,
     int, int, int, int) = target->callback;
 target->active -= 1;
 target->callback = ((void*)0);
 (*callback) (target->endp, urb, buffer, length, toggle_bits,
       error_count, condition_code, repeat_number, halted, skipped,
       actual, non_null);
}
