
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int vc_cols; int vc_num; int vc_video_erase_char; } ;
struct sisusb_usb_data {int sisusb_num_columns; int lock; } ;


 int mutex_unlock (int *) ;
 int sisusb_copy_memory (struct sisusb_usb_data*,int *,int ,int) ;
 struct sisusb_usb_data* sisusb_get_sisusb_lock_and_check (int ) ;
 int sisusb_haddr (struct sisusb_usb_data*,struct vc_data*,int,int) ;
 scalar_t__ sisusb_is_inactive (struct vc_data*,struct sisusb_usb_data*) ;
 int * sisusb_vaddr (struct sisusb_usb_data*,struct vc_data*,int,int) ;
 int sisusbcon_memsetw (int *,int ,int) ;

__attribute__((used)) static void
sisusbcon_clear(struct vc_data *c, int y, int x, int height, int width)
{
 struct sisusb_usb_data *sisusb;
 u16 eattr = c->vc_video_erase_char;
 int i, length, cols;
 u16 *dest;

 if (width <= 0 || height <= 0)
  return;

 sisusb = sisusb_get_sisusb_lock_and_check(c->vc_num);
 if (!sisusb)
  return;







 dest = sisusb_vaddr(sisusb, c, x, y);

 cols = sisusb->sisusb_num_columns;

 if (width > cols)
  width = cols;

 if (x == 0 && width >= c->vc_cols) {

  sisusbcon_memsetw(dest, eattr, height * cols * 2);

 } else {

  for (i = height; i > 0; i--, dest += cols)
   sisusbcon_memsetw(dest, eattr, width * 2);

 }

 if (sisusb_is_inactive(c, sisusb)) {
  mutex_unlock(&sisusb->lock);
  return;
 }

 length = ((height * cols) - x - (cols - width - x)) * 2;


 sisusb_copy_memory(sisusb, sisusb_vaddr(sisusb, c, x, y),
   sisusb_haddr(sisusb, c, x, y), length);

 mutex_unlock(&sisusb->lock);
}
