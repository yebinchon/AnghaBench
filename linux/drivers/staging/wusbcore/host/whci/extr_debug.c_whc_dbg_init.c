
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct whc_dbg {int dummy; } ;
struct TYPE_4__ {int * debugfs_dir; } ;
struct TYPE_5__ {TYPE_1__ pal; } ;
struct whc {TYPE_2__ wusbhc; TYPE_3__* dbg; } ;
struct TYPE_6__ {void* pzl_f; void* asl_f; void* di_f; } ;


 int GFP_KERNEL ;
 int asl_fops ;
 void* debugfs_create_file (char*,int,int *,struct whc*,int *) ;
 int di_fops ;
 TYPE_3__* kzalloc (int,int ) ;
 int pzl_fops ;

void whc_dbg_init(struct whc *whc)
{
 if (whc->wusbhc.pal.debugfs_dir == ((void*)0))
  return;

 whc->dbg = kzalloc(sizeof(struct whc_dbg), GFP_KERNEL);
 if (whc->dbg == ((void*)0))
  return;

 whc->dbg->di_f = debugfs_create_file("di", 0444,
           whc->wusbhc.pal.debugfs_dir, whc,
           &di_fops);
 whc->dbg->asl_f = debugfs_create_file("asl", 0444,
           whc->wusbhc.pal.debugfs_dir, whc,
           &asl_fops);
 whc->dbg->pzl_f = debugfs_create_file("pzl", 0444,
           whc->wusbhc.pal.debugfs_dir, whc,
           &pzl_fops);
}
