
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_io_data {int sgt; scalar_t__ use_sg; } ;


 int GFP_KERNEL ;
 void* ffs_build_sg_list (int *,size_t) ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static inline void *ffs_alloc_buffer(struct ffs_io_data *io_data,
 size_t data_len)
{
 if (io_data->use_sg)
  return ffs_build_sg_list(&io_data->sgt, data_len);

 return kmalloc(data_len, GFP_KERNEL);
}
