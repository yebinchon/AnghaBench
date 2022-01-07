
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_file_map {int show; int name; } ;
struct inode {int i_private; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* d_iname; } ;


 int ARRAY_SIZE (struct xhci_file_map*) ;
 struct xhci_file_map* context_files ;
 TYPE_1__* file_dentry (struct file*) ;
 int single_open (struct file*,int ,int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int xhci_context_open(struct inode *inode, struct file *file)
{
 int i;
 struct xhci_file_map *f_map;
 const char *file_name = file_dentry(file)->d_iname;

 for (i = 0; i < ARRAY_SIZE(context_files); i++) {
  f_map = &context_files[i];

  if (strcmp(f_map->name, file_name) == 0)
   break;
 }

 return single_open(file, f_map->show, inode->i_private);
}
