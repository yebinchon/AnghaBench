
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct bfad_port_s* i_private; } ;
struct file {struct bfad_debug_info* private_data; } ;
struct bfad_s {scalar_t__ trcmod; } ;
struct bfad_port_s {struct bfad_s* bfad; } ;
struct bfad_debug_info {int buffer_len; void* debug_buffer; } ;
struct bfa_trc_mod_s {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct bfad_debug_info* kzalloc (int,int ) ;

__attribute__((used)) static int
bfad_debugfs_open_drvtrc(struct inode *inode, struct file *file)
{
 struct bfad_port_s *port = inode->i_private;
 struct bfad_s *bfad = port->bfad;
 struct bfad_debug_info *debug;

 debug = kzalloc(sizeof(struct bfad_debug_info), GFP_KERNEL);
 if (!debug)
  return -ENOMEM;

 debug->debug_buffer = (void *) bfad->trcmod;
 debug->buffer_len = sizeof(struct bfa_trc_mod_s);

 file->private_data = debug;

 return 0;
}
