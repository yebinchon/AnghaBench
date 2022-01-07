
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt_notifier_param {struct vc_data* vc; } ;
struct vc_data {int vc_screenbuf_size; int vc_cols; int vc_rows; void* vc_screenbuf; int * vc_uni_pagedir_loc; int port; } ;
struct TYPE_2__ {struct vc_data* d; int SAK_work; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 unsigned int MAX_NR_CONSOLES ;
 int VT_ALLOCATE ;
 int WARN_CONSOLE_UNLOCKED () ;
 int atomic_notifier_call_chain (int *,int ,struct vt_notifier_param*) ;
 int con_set_default_unimap (struct vc_data*) ;
 int global_cursor_default ;
 int kfree (struct vc_data*) ;
 void* kzalloc (int,int ) ;
 int tty_port_init (int *) ;
 int vc_SAK ;
 TYPE_1__* vc_cons ;
 int vc_init (struct vc_data*,int ,int ,int) ;
 int vcs_make_sysfs (unsigned int) ;
 int visual_deinit (struct vc_data*) ;
 int visual_init (struct vc_data*,unsigned int,int) ;
 int vt_notifier_list ;

int vc_allocate(unsigned int currcons)
{
 struct vt_notifier_param param;
 struct vc_data *vc;

 WARN_CONSOLE_UNLOCKED();

 if (currcons >= MAX_NR_CONSOLES)
  return -ENXIO;

 if (vc_cons[currcons].d)
  return 0;







 param.vc = vc = kzalloc(sizeof(struct vc_data), GFP_KERNEL);
 if (!vc)
  return -ENOMEM;

 vc_cons[currcons].d = vc;
 tty_port_init(&vc->port);
 INIT_WORK(&vc_cons[currcons].SAK_work, vc_SAK);

 visual_init(vc, currcons, 1);

 if (!*vc->vc_uni_pagedir_loc)
  con_set_default_unimap(vc);

 vc->vc_screenbuf = kzalloc(vc->vc_screenbuf_size, GFP_KERNEL);
 if (!vc->vc_screenbuf)
  goto err_free;



 if (global_cursor_default == -1)
  global_cursor_default = 1;

 vc_init(vc, vc->vc_rows, vc->vc_cols, 1);
 vcs_make_sysfs(currcons);
 atomic_notifier_call_chain(&vt_notifier_list, VT_ALLOCATE, &param);

 return 0;
err_free:
 visual_deinit(vc);
 kfree(vc);
 vc_cons[currcons].d = ((void*)0);
 return -ENOMEM;
}
