
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int dev_opened ;
 int synth ;
 scalar_t__ xchg (int *,int) ;

__attribute__((used)) static int speakup_file_open(struct inode *ip, struct file *fp)
{
 if (!synth)
  return -ENODEV;
 if (xchg(&dev_opened, 1))
  return -EBUSY;
 return 0;
}
