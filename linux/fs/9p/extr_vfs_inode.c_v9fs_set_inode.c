
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_inode {int qid; } ;
struct p9_wstat {int qid; } ;
struct inode {int dummy; } ;


 struct v9fs_inode* V9FS_I (struct inode*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int v9fs_set_inode(struct inode *inode, void *data)
{
 struct v9fs_inode *v9inode = V9FS_I(inode);
 struct p9_wstat *st = (struct p9_wstat *)data;

 memcpy(&v9inode->qid, &st->qid, sizeof(st->qid));
 return 0;
}
