
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8500lcd_info {scalar_t__ regbase; int wait; } ;
struct fb_info {int dummy; } ;


 int ETIMEDOUT ;
 unsigned int FBIO_WAITFORVSYNC ;
 int HZ ;
 int readl (scalar_t__) ;
 struct vt8500lcd_info* to_vt8500lcd_info (struct fb_info*) ;
 int wait_event_interruptible_timeout (int ,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int vt8500lcd_ioctl(struct fb_info *info, unsigned int cmd,
    unsigned long arg)
{
 int ret = 0;
 struct vt8500lcd_info *fbi = to_vt8500lcd_info(info);

 if (cmd == FBIO_WAITFORVSYNC) {

  writel(0xffffffff ^ (1 << 3), fbi->regbase + 0x3c);
  ret = wait_event_interruptible_timeout(fbi->wait,
   readl(fbi->regbase + 0x38) & (1 << 3), HZ / 10);

  writel(0xffffffff, fbi->regbase + 0x3c);
  if (ret < 0)
   return ret;
  if (ret == 0)
   return -ETIMEDOUT;
 }

 return ret;
}
