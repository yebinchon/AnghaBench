
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int debugfs_root; } ;


 int S_IRUSR ;
 int csio_mem_debugfs_fops ;
 int debugfs_create_file_size (char const*,int ,int ,void*,int *,unsigned int) ;

void csio_add_debugfs_mem(struct csio_hw *hw, const char *name,
     unsigned int idx, unsigned int size_mb)
{
 debugfs_create_file_size(name, S_IRUSR, hw->debugfs_root,
     (void *)hw + idx, &csio_mem_debugfs_fops,
     size_mb << 20);
}
