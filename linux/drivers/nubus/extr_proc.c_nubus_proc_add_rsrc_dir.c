
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct nubus_dirent {int type; } ;
struct nubus_board {int lanes; } ;
typedef int name ;


 struct proc_dir_entry* proc_mkdir_data (char*,int,struct proc_dir_entry*,void*) ;
 int snprintf (char*,int,char*,int) ;

struct proc_dir_entry *nubus_proc_add_rsrc_dir(struct proc_dir_entry *procdir,
            const struct nubus_dirent *ent,
            struct nubus_board *board)
{
 char name[9];
 int lanes = board->lanes;

 if (!procdir)
  return ((void*)0);
 snprintf(name, sizeof(name), "%x", ent->type);
 return proc_mkdir_data(name, 0555, procdir, (void *)lanes);
}
