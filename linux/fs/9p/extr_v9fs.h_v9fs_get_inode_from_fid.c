
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct super_block {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* v9fs_inode_from_fid (struct v9fs_session_info*,struct p9_fid*,struct super_block*,int ) ;
 struct inode* v9fs_inode_from_fid_dotl (struct v9fs_session_info*,struct p9_fid*,struct super_block*,int ) ;
 scalar_t__ v9fs_proto_dotl (struct v9fs_session_info*) ;

__attribute__((used)) static inline struct inode *
v9fs_get_inode_from_fid(struct v9fs_session_info *v9ses, struct p9_fid *fid,
   struct super_block *sb)
{
 if (v9fs_proto_dotl(v9ses))
  return v9fs_inode_from_fid_dotl(v9ses, fid, sb, 0);
 else
  return v9fs_inode_from_fid(v9ses, fid, sb, 0);
}
