
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int blkcnt_t ;



__attribute__((used)) static inline blkcnt_t calc_inode_blocks(u64 size)
{
 return (size + (1<<9) - 1) >> 9;
}
