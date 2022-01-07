
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ dev_opened ;

__attribute__((used)) static int speakup_file_release(struct inode *ip, struct file *fp)
{
 dev_opened = 0;
 return 0;
}
