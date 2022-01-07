
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {TYPE_2__* ki_filp; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {int host; } ;


 scalar_t__ IS_DAX (int ) ;
 int ext2_dax_write_iter (struct kiocb*,struct iov_iter*) ;
 int generic_file_write_iter (struct kiocb*,struct iov_iter*) ;

__attribute__((used)) static ssize_t ext2_file_write_iter(struct kiocb *iocb, struct iov_iter *from)
{




 return generic_file_write_iter(iocb, from);
}
