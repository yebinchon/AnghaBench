
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct afs_volsync {int creation; } ;
typedef int __be32 ;


 int ntohl (int ) ;

__attribute__((used)) static void xdr_decode_AFSVolSync(const __be32 **_bp,
      struct afs_volsync *volsync)
{
 const __be32 *bp = *_bp;
 u32 creation;

 creation = ntohl(*bp++);
 bp++;
 bp++;
 bp++;
 bp++;
 bp++;
 *_bp = bp;

 if (volsync)
  volsync->creation = creation;
}
