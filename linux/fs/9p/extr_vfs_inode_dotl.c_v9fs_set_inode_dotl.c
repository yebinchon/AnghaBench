
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int qid; } ;
struct p9_stat_dotl {int st_gen; int qid; } ;
struct inode {int i_generation; } ;


 struct v9fs_inode* V9FS_I (struct inode*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int v9fs_set_inode_dotl(struct inode *inode, void *data)
{
 struct v9fs_inode *v9inode = V9FS_I(inode);
 struct p9_stat_dotl *st = (struct p9_stat_dotl *)data;

 memcpy(&v9inode->qid, &st->qid, sizeof(st->qid));
 inode->i_generation = st->st_gen;
 return 0;
}
