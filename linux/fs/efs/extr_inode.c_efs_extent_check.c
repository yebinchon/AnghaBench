
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct efs_sb_info {scalar_t__ fs_start; } ;
struct TYPE_4__ {scalar_t__ ex_bn; scalar_t__ ex_length; scalar_t__ ex_offset; } ;
struct TYPE_5__ {TYPE_1__ cooked; } ;
typedef TYPE_2__ efs_extent ;
typedef scalar_t__ efs_block_t ;



__attribute__((used)) static inline efs_block_t
efs_extent_check(efs_extent *ptr, efs_block_t block, struct efs_sb_info *sb) {
 efs_block_t start;
 efs_block_t length;
 efs_block_t offset;





 start = ptr->cooked.ex_bn;
 length = ptr->cooked.ex_length;
 offset = ptr->cooked.ex_offset;

 if ((block >= offset) && (block < offset+length)) {
  return(sb->fs_start + start + block - offset);
 } else {
  return 0;
 }
}
