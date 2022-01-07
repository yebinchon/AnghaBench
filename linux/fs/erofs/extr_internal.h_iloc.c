
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erofs_sb_info {int islotbits; int meta_blkaddr; } ;
typedef scalar_t__ erofs_off_t ;
typedef int erofs_nid_t ;


 scalar_t__ blknr_to_addr (int ) ;

__attribute__((used)) static inline erofs_off_t iloc(struct erofs_sb_info *sbi, erofs_nid_t nid)
{
 return blknr_to_addr(sbi->meta_blkaddr) + (nid << sbi->islotbits);
}
