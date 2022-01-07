
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {char* pci_name; int * bfad_dentry_files; } ;
struct bfad_port_s {void* port_debugfs_root; struct bfad_s* bfad; } ;
struct bfad_debugfs_entry {int fops; int mode; int name; } ;
typedef int name ;


 int ARRAY_SIZE (struct bfad_debugfs_entry*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int bfa_debugfs_enable ;
 int bfa_debugfs_port_count ;
 int * bfa_debugfs_root ;
 struct bfad_debugfs_entry* bfad_debugfs_files ;
 void* debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (int ,int ,void*,struct bfad_port_s*,int ) ;
 int snprintf (char*,int,char*,char*) ;

inline void
bfad_debugfs_init(struct bfad_port_s *port)
{
 struct bfad_s *bfad = port->bfad;
 const struct bfad_debugfs_entry *file;
 char name[64];
 int i;

 if (!bfa_debugfs_enable)
  return;


 if (!bfa_debugfs_root) {
  bfa_debugfs_root = debugfs_create_dir("bfa", ((void*)0));
  atomic_set(&bfa_debugfs_port_count, 0);
 }


 snprintf(name, sizeof(name), "pci_dev:%s", bfad->pci_name);
 if (!port->port_debugfs_root) {
  port->port_debugfs_root =
   debugfs_create_dir(name, bfa_debugfs_root);

  atomic_inc(&bfa_debugfs_port_count);

  for (i = 0; i < ARRAY_SIZE(bfad_debugfs_files); i++) {
   file = &bfad_debugfs_files[i];
   bfad->bfad_dentry_files[i] =
     debugfs_create_file(file->name,
       file->mode,
       port->port_debugfs_root,
       port,
       file->fops);
  }
 }

 return;
}
