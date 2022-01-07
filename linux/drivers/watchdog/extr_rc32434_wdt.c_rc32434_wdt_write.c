
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EFAULT ;
 int expect_close ;
 scalar_t__ get_user (char,char const*) ;
 int nowayout ;
 int rc32434_wdt_ping () ;

__attribute__((used)) static ssize_t rc32434_wdt_write(struct file *file, const char *data,
    size_t len, loff_t *ppos)
{
 if (len) {
  if (!nowayout) {
   size_t i;


   expect_close = 0;

   for (i = 0; i != len; i++) {
    char c;
    if (get_user(c, data + i))
     return -EFAULT;
    if (c == 'V')
     expect_close = 42;
   }
  }
  rc32434_wdt_ping();
  return len;
 }
 return 0;
}
