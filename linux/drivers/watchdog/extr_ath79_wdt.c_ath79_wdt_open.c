
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int WDT_FLAGS_BUSY ;
 int WDT_FLAGS_EXPECT_CLOSE ;
 int ath79_wdt_enable () ;
 int clear_bit (int ,int *) ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_flags ;

__attribute__((used)) static int ath79_wdt_open(struct inode *inode, struct file *file)
{
 if (test_and_set_bit(WDT_FLAGS_BUSY, &wdt_flags))
  return -EBUSY;

 clear_bit(WDT_FLAGS_EXPECT_CLOSE, &wdt_flags);
 ath79_wdt_enable();

 return stream_open(inode, file);
}
