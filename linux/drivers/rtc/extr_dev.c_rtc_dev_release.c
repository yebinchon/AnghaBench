
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int flags; } ;
struct inode {int dummy; } ;
struct file {struct rtc_device* private_data; } ;


 int RTC_DEV_BUSY ;
 int RTC_UIE_OFF ;
 int clear_bit_unlock (int ,int *) ;
 int rtc_dev_ioctl (struct file*,int ,int ) ;
 int rtc_irq_set_state (struct rtc_device*,int ) ;
 int rtc_update_irq_enable (struct rtc_device*,int ) ;

__attribute__((used)) static int rtc_dev_release(struct inode *inode, struct file *file)
{
 struct rtc_device *rtc = file->private_data;
 rtc_dev_ioctl(file, RTC_UIE_OFF, 0);
 rtc_update_irq_enable(rtc, 0);
 rtc_irq_set_state(rtc, 0);

 clear_bit_unlock(RTC_DEV_BUSY, &rtc->flags);
 return 0;
}
