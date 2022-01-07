
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EIO ;
 int mtx1_wdt_reset () ;

__attribute__((used)) static ssize_t mtx1_wdt_write(struct file *file, const char *buf,
      size_t count, loff_t *ppos)
{
 if (!count)
  return -EIO;
 mtx1_wdt_reset();
 return count;
}
