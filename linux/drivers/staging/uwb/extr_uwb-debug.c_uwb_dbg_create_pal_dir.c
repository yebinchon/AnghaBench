
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rc {TYPE_1__* dbg; } ;
struct uwb_pal {scalar_t__ name; struct uwb_rc* rc; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ root_d; } ;


 struct dentry* debugfs_create_dir (scalar_t__,scalar_t__) ;
 scalar_t__ root_dir ;

struct dentry *uwb_dbg_create_pal_dir(struct uwb_pal *pal)
{
 struct uwb_rc *rc = pal->rc;

 if (root_dir && rc->dbg && rc->dbg->root_d && pal->name)
  return debugfs_create_dir(pal->name, rc->dbg->root_d);
 return ((void*)0);
}
