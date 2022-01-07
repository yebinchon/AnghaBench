
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;
struct p9_stat_dotl {int st_rdev; int st_mode; } ;
struct p9_qid {int dummy; } ;
struct p9_fid {int dummy; } ;
struct inode {int i_state; unsigned long i_ino; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int I_NEW ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int (*) (struct inode*,void*),int ,struct p9_stat_dotl*) ;
 int iget_failed (struct inode*) ;
 int new_decode_dev (int ) ;
 int unlock_new_inode (struct inode*) ;
 int v9fs_cache_inode_get_cookie (struct inode*) ;
 int v9fs_get_acl (struct inode*,struct p9_fid*) ;
 int v9fs_init_inode (struct v9fs_session_info*,struct inode*,int ,int ) ;
 unsigned long v9fs_qid2ino (struct p9_qid*) ;
 int v9fs_set_inode_dotl ;
 int v9fs_stat2inode_dotl (struct p9_stat_dotl*,struct inode*,int ) ;
 int v9fs_test_inode_dotl (struct inode*,void*) ;
 int v9fs_test_new_inode_dotl (struct inode*,void*) ;

__attribute__((used)) static struct inode *v9fs_qid_iget_dotl(struct super_block *sb,
     struct p9_qid *qid,
     struct p9_fid *fid,
     struct p9_stat_dotl *st,
     int new)
{
 int retval;
 unsigned long i_ino;
 struct inode *inode;
 struct v9fs_session_info *v9ses = sb->s_fs_info;
 int (*test)(struct inode *, void *);

 if (new)
  test = v9fs_test_new_inode_dotl;
 else
  test = v9fs_test_inode_dotl;

 i_ino = v9fs_qid2ino(qid);
 inode = iget5_locked(sb, i_ino, test, v9fs_set_inode_dotl, st);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;





 inode->i_ino = i_ino;
 retval = v9fs_init_inode(v9ses, inode,
     st->st_mode, new_decode_dev(st->st_rdev));
 if (retval)
  goto error;

 v9fs_stat2inode_dotl(st, inode, 0);
 v9fs_cache_inode_get_cookie(inode);
 retval = v9fs_get_acl(inode, fid);
 if (retval)
  goto error;

 unlock_new_inode(inode);
 return inode;
error:
 iget_failed(inode);
 return ERR_PTR(retval);

}
