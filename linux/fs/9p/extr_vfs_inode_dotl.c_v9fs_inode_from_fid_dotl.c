
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct super_block {int dummy; } ;
struct p9_stat_dotl {int qid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* ERR_CAST (struct p9_stat_dotl*) ;
 scalar_t__ IS_ERR (struct p9_stat_dotl*) ;
 int P9_STATS_BASIC ;
 int P9_STATS_GEN ;
 int kfree (struct p9_stat_dotl*) ;
 struct p9_stat_dotl* p9_client_getattr_dotl (struct p9_fid*,int) ;
 struct inode* v9fs_qid_iget_dotl (struct super_block*,int *,struct p9_fid*,struct p9_stat_dotl*,int) ;

struct inode *
v9fs_inode_from_fid_dotl(struct v9fs_session_info *v9ses, struct p9_fid *fid,
    struct super_block *sb, int new)
{
 struct p9_stat_dotl *st;
 struct inode *inode = ((void*)0);

 st = p9_client_getattr_dotl(fid, P9_STATS_BASIC | P9_STATS_GEN);
 if (IS_ERR(st))
  return ERR_CAST(st);

 inode = v9fs_qid_iget_dotl(sb, &st->qid, fid, st, new);
 kfree(st);
 return inode;
}
