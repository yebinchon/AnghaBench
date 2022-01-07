
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 scalar_t__ MAX_TIMEOUT ;
 int open_flag ;
 int pr_info (char*,scalar_t__) ;
 int sc1200wdt_start () ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ timeout ;

__attribute__((used)) static int sc1200wdt_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &open_flag))
  return -EBUSY;

 if (timeout > MAX_TIMEOUT)
  timeout = MAX_TIMEOUT;

 sc1200wdt_start();
 pr_info("Watchdog enabled, timeout = %d min(s)", timeout);

 return stream_open(inode, file);
}
