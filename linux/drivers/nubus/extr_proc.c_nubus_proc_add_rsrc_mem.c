
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct nubus_proc_pde_data {int dummy; } ;
struct nubus_dirent {int type; } ;
typedef int name ;


 int S_IFREG ;
 int nubus_dirptr (struct nubus_dirent const*) ;
 struct nubus_proc_pde_data* nubus_proc_alloc_pde_data (int ,unsigned int) ;
 int nubus_proc_rsrc_show ;
 int proc_create_single_data (char*,int,struct proc_dir_entry*,int ,struct nubus_proc_pde_data*) ;
 int snprintf (char*,int,char*,int) ;

void nubus_proc_add_rsrc_mem(struct proc_dir_entry *procdir,
        const struct nubus_dirent *ent,
        unsigned int size)
{
 char name[9];
 struct nubus_proc_pde_data *pde_data;

 if (!procdir)
  return;

 snprintf(name, sizeof(name), "%x", ent->type);
 if (size)
  pde_data = nubus_proc_alloc_pde_data(nubus_dirptr(ent), size);
 else
  pde_data = ((void*)0);
 proc_create_single_data(name, S_IFREG | 0444, procdir,
   nubus_proc_rsrc_show, pde_data);
}
