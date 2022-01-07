
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct yfs_xdr_YFSVolSync {int vol_creation_date; } ;
struct afs_volsync {int creation; } ;
typedef int __be32 ;


 int do_div (int ,int) ;
 int xdr_size (struct yfs_xdr_YFSVolSync*) ;
 int xdr_to_u64 (int ) ;

__attribute__((used)) static void xdr_decode_YFSVolSync(const __be32 **_bp,
      struct afs_volsync *volsync)
{
 struct yfs_xdr_YFSVolSync *x = (void *)*_bp;
 u64 creation;

 if (volsync) {
  creation = xdr_to_u64(x->vol_creation_date);
  do_div(creation, 10 * 1000 * 1000);
  volsync->creation = creation;
 }

 *_bp += xdr_size(x);
}
