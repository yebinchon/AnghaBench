
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
struct nubus_board {int slot; } ;
typedef int name ;


 int proc_bus_nubus_dir ;
 struct proc_dir_entry* proc_mkdir (char*,int ) ;
 int snprintf (char*,int,char*,int) ;

struct proc_dir_entry *nubus_proc_add_board(struct nubus_board *board)
{
 char name[2];

 if (!proc_bus_nubus_dir)
  return ((void*)0);
 snprintf(name, sizeof(name), "%x", board->slot);
 return proc_mkdir(name, proc_bus_nubus_dir);
}
