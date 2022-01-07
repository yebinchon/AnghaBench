
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_chan {int vsync_completion; int lcdc; } ;


 int ETIMEDOUT ;
 unsigned long LDINTR_STATUS_MASK ;
 unsigned long LDINTR_VEE ;
 int _LDINTR ;
 unsigned long lcdc_read (int ,int ) ;
 int lcdc_write (int ,int ,unsigned long) ;
 int msecs_to_jiffies (int) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int sh_mobile_lcdc_wait_for_vsync(struct sh_mobile_lcdc_chan *ch)
{
 unsigned long ldintr;
 int ret;




 ldintr = lcdc_read(ch->lcdc, _LDINTR);
 ldintr |= LDINTR_VEE | LDINTR_STATUS_MASK;
 lcdc_write(ch->lcdc, _LDINTR, ldintr);

 ret = wait_for_completion_interruptible_timeout(&ch->vsync_completion,
       msecs_to_jiffies(100));
 if (!ret)
  return -ETIMEDOUT;

 return 0;
}
