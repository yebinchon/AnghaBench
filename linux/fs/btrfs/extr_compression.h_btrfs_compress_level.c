
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int btrfs_compress_level(unsigned int type_level)
{
 return ((type_level & 0xF0) >> 4);
}
