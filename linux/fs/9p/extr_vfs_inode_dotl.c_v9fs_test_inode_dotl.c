
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ path; int version; } ;
struct v9fs_inode {TYPE_1__ qid; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ path; int version; } ;
struct p9_stat_dotl {int st_mode; scalar_t__ st_gen; TYPE_2__ qid; } ;
struct inode {int i_mode; scalar_t__ i_generation; } ;


 int S_IFMT ;
 struct v9fs_inode* V9FS_I (struct inode*) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int v9fs_test_inode_dotl(struct inode *inode, void *data)
{
 struct v9fs_inode *v9inode = V9FS_I(inode);
 struct p9_stat_dotl *st = (struct p9_stat_dotl *)data;


 if ((inode->i_mode & S_IFMT) != (st->st_mode & S_IFMT))
  return 0;

 if (inode->i_generation != st->st_gen)
  return 0;


 if (memcmp(&v9inode->qid.version,
     &st->qid.version, sizeof(v9inode->qid.version)))
  return 0;

 if (v9inode->qid.type != st->qid.type)
  return 0;

 if (v9inode->qid.path != st->qid.path)
  return 0;
 return 1;
}
