
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct super_block {int dummy; } ;
struct p9_wstat {int qid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* ERR_CAST (struct p9_wstat*) ;
 scalar_t__ IS_ERR (struct p9_wstat*) ;
 int kfree (struct p9_wstat*) ;
 struct p9_wstat* p9_client_stat (struct p9_fid*) ;
 int p9stat_free (struct p9_wstat*) ;
 struct inode* v9fs_qid_iget (struct super_block*,int *,struct p9_wstat*,int) ;

struct inode *
v9fs_inode_from_fid(struct v9fs_session_info *v9ses, struct p9_fid *fid,
      struct super_block *sb, int new)
{
 struct p9_wstat *st;
 struct inode *inode = ((void*)0);

 st = p9_client_stat(fid);
 if (IS_ERR(st))
  return ERR_CAST(st);

 inode = v9fs_qid_iget(sb, &st->qid, st, new);
 p9stat_free(st);
 kfree(st);
 return inode;
}
