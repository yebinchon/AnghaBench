
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int * buffhds; int fsg_num_buffers; } ;


 int _fsg_common_free_buffers (int *,int ) ;

void fsg_common_free_buffers(struct fsg_common *common)
{
 _fsg_common_free_buffers(common->buffhds, common->fsg_num_buffers);
 common->buffhds = ((void*)0);
}
