
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ magic; } ;
struct inode {int dummy; } ;


 scalar_t__ TTY_MAGIC ;
 int imajor (struct inode*) ;
 int iminor (struct inode*) ;
 int pr_warn (char*,int ,int ,char const*) ;

__attribute__((used)) static int tty_paranoia_check(struct tty_struct *tty, struct inode *inode,
         const char *routine)
{
 return 0;
}
