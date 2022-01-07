
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;


 int v9fs_file_write_iter (struct kiocb*,struct iov_iter*) ;

__attribute__((used)) static ssize_t
v9fs_mmap_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
{




 return v9fs_file_write_iter(iocb, from);
}
