
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sisusb_usb_data {scalar_t__ vrambase; } ;


 int READL (scalar_t__,scalar_t__*) ;
 int WRITEL (scalar_t__,scalar_t__) ;

__attribute__((used)) static int sisusb_check_rbc(struct sisusb_usb_data *sisusb, int *iret,
  u32 inc, int testn)
{
 int ret = 0, i;
 u32 j, tmp;

 *iret = 0;

 for (i = 0, j = 0; i < testn; i++) {
  ret |= WRITEL(sisusb->vrambase + j, j);
  j += inc;
 }

 for (i = 0, j = 0; i < testn; i++) {
  ret |= READL(sisusb->vrambase + j, &tmp);
  if (tmp != j)
   return ret;

  j += inc;
 }

 *iret = 1;
 return ret;
}
