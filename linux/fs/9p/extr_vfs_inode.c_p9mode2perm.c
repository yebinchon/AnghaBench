
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct p9_wstat {int mode; } ;


 int P9_DMSETGID ;
 int P9_DMSETUID ;
 int P9_DMSETVTX ;
 int S_IALLUGO ;
 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;
 scalar_t__ v9fs_proto_dotu (struct v9fs_session_info*) ;

__attribute__((used)) static int p9mode2perm(struct v9fs_session_info *v9ses,
         struct p9_wstat *stat)
{
 int res;
 int mode = stat->mode;

 res = mode & S_IALLUGO;
 if (v9fs_proto_dotu(v9ses)) {
  if ((mode & P9_DMSETUID) == P9_DMSETUID)
   res |= S_ISUID;

  if ((mode & P9_DMSETGID) == P9_DMSETGID)
   res |= S_ISGID;

  if ((mode & P9_DMSETVTX) == P9_DMSETVTX)
   res |= S_ISVTX;
 }
 return res;
}
