
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int vc_video_erase_char; } ;
struct sisusb_usb_data {int sisusb_num_columns; int lock; } ;
typedef enum con_scroll { ____Placeholder_con_scroll } con_scroll ;




 int memmove (int ,int ,unsigned int) ;
 int mutex_unlock (int *) ;
 int sisusb_copy_memory (struct sisusb_usb_data*,int ,int ,int) ;
 int sisusb_haddr (struct sisusb_usb_data*,struct vc_data*,int ,unsigned int) ;
 int sisusb_vaddr (struct sisusb_usb_data*,struct vc_data*,int ,unsigned int) ;
 int sisusbcon_memsetw (int ,int ,unsigned int) ;

__attribute__((used)) static bool
sisusbcon_scroll_area(struct vc_data *c, struct sisusb_usb_data *sisusb,
  unsigned int t, unsigned int b, enum con_scroll dir,
  unsigned int lines)
{
 int cols = sisusb->sisusb_num_columns;
 int length = ((b - t) * cols) * 2;
 u16 eattr = c->vc_video_erase_char;
 switch (dir) {

  case 128:
   memmove(sisusb_vaddr(sisusb, c, 0, t),
        sisusb_vaddr(sisusb, c, 0, t + lines),
        (b - t - lines) * cols * 2);
   sisusbcon_memsetw(sisusb_vaddr(sisusb, c, 0, b - lines),
     eattr, lines * cols * 2);
   break;

  case 129:
   memmove(sisusb_vaddr(sisusb, c, 0, t + lines),
        sisusb_vaddr(sisusb, c, 0, t),
        (b - t - lines) * cols * 2);
   sisusbcon_memsetw(sisusb_vaddr(sisusb, c, 0, t), eattr,
       lines * cols * 2);
   break;
 }

 sisusb_copy_memory(sisusb, sisusb_vaddr(sisusb, c, 0, t),
   sisusb_haddr(sisusb, c, 0, t), length);

 mutex_unlock(&sisusb->lock);

 return 1;
}
