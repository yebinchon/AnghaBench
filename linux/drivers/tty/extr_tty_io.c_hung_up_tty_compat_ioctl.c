
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long EIO ;
 long ENOTTY ;
 unsigned int TIOCSPGRP ;

__attribute__((used)) static long hung_up_tty_compat_ioctl(struct file *file,
         unsigned int cmd, unsigned long arg)
{
 return cmd == TIOCSPGRP ? -ENOTTY : -EIO;
}
