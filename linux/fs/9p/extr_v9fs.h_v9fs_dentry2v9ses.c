
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct v9fs_session_info* s_fs_info; } ;



__attribute__((used)) static inline struct v9fs_session_info *v9fs_dentry2v9ses(struct dentry *dentry)
{
 return dentry->d_sb->s_fs_info;
}
