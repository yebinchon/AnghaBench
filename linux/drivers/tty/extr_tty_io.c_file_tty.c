
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct tty_file_private {struct tty_struct* tty; } ;
struct file {scalar_t__ private_data; } ;



__attribute__((used)) static inline struct tty_struct *file_tty(struct file *file)
{
 return ((struct tty_file_private *)file->private_data)->tty;
}
