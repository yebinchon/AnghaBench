
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tv_sec; } ;
struct iattr {int ia_valid; int ia_mode; int ia_gid; int ia_uid; TYPE_1__ ia_mtime; } ;
typedef int __be32 ;


 int AFS_SET_GROUP ;
 int AFS_SET_MODE ;
 int AFS_SET_MTIME ;
 int AFS_SET_OWNER ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_UID ;
 int S_IALLUGO ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 void* htonl (int) ;
 int init_user_ns ;

__attribute__((used)) static void xdr_encode_AFS_StoreStatus(__be32 **_bp, struct iattr *attr)
{
 __be32 *bp = *_bp;
 u32 mask = 0, mtime = 0, owner = 0, group = 0, mode = 0;

 mask = 0;
 if (attr->ia_valid & ATTR_MTIME) {
  mask |= AFS_SET_MTIME;
  mtime = attr->ia_mtime.tv_sec;
 }

 if (attr->ia_valid & ATTR_UID) {
  mask |= AFS_SET_OWNER;
  owner = from_kuid(&init_user_ns, attr->ia_uid);
 }

 if (attr->ia_valid & ATTR_GID) {
  mask |= AFS_SET_GROUP;
  group = from_kgid(&init_user_ns, attr->ia_gid);
 }

 if (attr->ia_valid & ATTR_MODE) {
  mask |= AFS_SET_MODE;
  mode = attr->ia_mode & S_IALLUGO;
 }

 *bp++ = htonl(mask);
 *bp++ = htonl(mtime);
 *bp++ = htonl(owner);
 *bp++ = htonl(group);
 *bp++ = htonl(mode);
 *bp++ = 0;
 *_bp = bp;
}
