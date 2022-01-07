
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_io_data {int buf; int sgt; scalar_t__ use_sg; } ;


 int kfree (int ) ;
 int sg_free_table (int *) ;
 int vfree (int ) ;

__attribute__((used)) static inline void ffs_free_buffer(struct ffs_io_data *io_data)
{
 if (!io_data->buf)
  return;

 if (io_data->use_sg) {
  sg_free_table(&io_data->sgt);
  vfree(io_data->buf);
 } else {
  kfree(io_data->buf);
 }
}
