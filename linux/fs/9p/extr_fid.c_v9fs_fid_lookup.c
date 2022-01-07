
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int flags; int uid; } ;
struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;
typedef int kuid_t ;


 int INVALID_UID ;


 int V9FS_ACCESS_MASK ;


 int current_fsuid () ;
 struct v9fs_session_info* v9fs_dentry2v9ses (struct dentry*) ;
 struct p9_fid* v9fs_fid_lookup_with_uid (struct dentry*,int ,int) ;

struct p9_fid *v9fs_fid_lookup(struct dentry *dentry)
{
 kuid_t uid;
 int any, access;
 struct v9fs_session_info *v9ses;

 v9ses = v9fs_dentry2v9ses(dentry);
 access = v9ses->flags & V9FS_ACCESS_MASK;
 switch (access) {
 case 129:
 case 128:
 case 130:
  uid = current_fsuid();
  any = 0;
  break;

 case 131:
  uid = v9ses->uid;
  any = 1;
  break;

 default:
  uid = INVALID_UID;
  any = 0;
  break;
 }
 return v9fs_fid_lookup_with_uid(dentry, uid, any);
}
