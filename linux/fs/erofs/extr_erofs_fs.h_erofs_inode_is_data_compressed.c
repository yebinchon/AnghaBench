
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EROFS_INODE_FLAT_COMPRESSION ;
 unsigned int EROFS_INODE_FLAT_COMPRESSION_LEGACY ;

__attribute__((used)) static inline bool erofs_inode_is_data_compressed(unsigned int datamode)
{
 return datamode == EROFS_INODE_FLAT_COMPRESSION ||
  datamode == EROFS_INODE_FLAT_COMPRESSION_LEGACY;
}
