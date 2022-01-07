
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int valid; int name; } ;
union afs_xdr_dirent {TYPE_2__ u; } ;
struct TYPE_3__ {scalar_t__* bitmap; } ;
union afs_xdr_dir_block {union afs_xdr_dirent* dirents; TYPE_1__ hdr; } ;
typedef int u64 ;
struct qstr {int len; int name; } ;


 int AFS_DIR_DIRENT_SIZE ;
 int AFS_DIR_RESV_BLOCKS ;
 int AFS_DIR_RESV_BLOCKS0 ;
 int AFS_DIR_SLOTS_PER_BLOCK ;
 int _enter (char*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int round_up (int,int) ;
 int strlen (int ) ;

__attribute__((used)) static int afs_dir_scan_block(union afs_xdr_dir_block *block, struct qstr *name,
         unsigned int blocknum)
{
 union afs_xdr_dirent *de;
 u64 bitmap;
 int d, len, n;

 _enter("");

 bitmap = (u64)block->hdr.bitmap[0] << 0 * 8;
 bitmap |= (u64)block->hdr.bitmap[1] << 1 * 8;
 bitmap |= (u64)block->hdr.bitmap[2] << 2 * 8;
 bitmap |= (u64)block->hdr.bitmap[3] << 3 * 8;
 bitmap |= (u64)block->hdr.bitmap[4] << 4 * 8;
 bitmap |= (u64)block->hdr.bitmap[5] << 5 * 8;
 bitmap |= (u64)block->hdr.bitmap[6] << 6 * 8;
 bitmap |= (u64)block->hdr.bitmap[7] << 7 * 8;

 for (d = (blocknum == 0 ? AFS_DIR_RESV_BLOCKS0 : AFS_DIR_RESV_BLOCKS);
      d < AFS_DIR_SLOTS_PER_BLOCK;
      d++) {
  if (!((bitmap >> d) & 1))
   continue;
  de = &block->dirents[d];
  if (de->u.valid != 1)
   continue;


  len = strlen(de->u.name);
  if (len == name->len &&
      memcmp(de->u.name, name->name, name->len) == 0)
   return d;

  n = round_up(12 + len + 1 + 4, AFS_DIR_DIRENT_SIZE);
  n /= AFS_DIR_DIRENT_SIZE;
  d += n - 1;
 }

 return -1;
}
