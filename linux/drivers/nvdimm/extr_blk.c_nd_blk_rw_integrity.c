
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nd_namespace_blk {int dummy; } ;
struct bio_integrity_payload {int dummy; } ;



__attribute__((used)) static int nd_blk_rw_integrity(struct nd_namespace_blk *nsblk,
  struct bio_integrity_payload *bip, u64 lba, int rw)
{
 return 0;
}
