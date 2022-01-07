
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct file {int f_mode; } ;


 int FMODE_WRITE ;

__attribute__((used)) static bool apex_ioctl_check_permissions(struct file *filp, uint cmd)
{
 return !!(filp->f_mode & FMODE_WRITE);
}
