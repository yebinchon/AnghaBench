
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;


 int __cifs_writev (struct kiocb*,struct iov_iter*,int) ;

ssize_t cifs_direct_writev(struct kiocb *iocb, struct iov_iter *from)
{
 return __cifs_writev(iocb, from, 1);
}
