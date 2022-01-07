
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EFAULT ;
 int ar7_wdt_kick (int) ;
 int expect_close ;
 scalar_t__ get_user (char,char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;

__attribute__((used)) static ssize_t ar7_wdt_write(struct file *file, const char *data,
        size_t len, loff_t *ppos)
{

 if (len) {
  size_t i;

  spin_lock(&wdt_lock);
  ar7_wdt_kick(1);
  spin_unlock(&wdt_lock);

  expect_close = 0;
  for (i = 0; i < len; ++i) {
   char c;
   if (get_user(c, data + i))
    return -EFAULT;
   if (c == 'V')
    expect_close = 1;
  }

 }
 return len;
}
