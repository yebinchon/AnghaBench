
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct kgdb_nmi_tty_priv* driver_data; } ;
struct kgdb_nmi_tty_priv {int port; } ;
struct file {unsigned int f_flags; } ;


 unsigned int O_ACCMODE ;
 unsigned int O_RDONLY ;
 unsigned int O_RDWR ;
 int atomic_dec (int *) ;
 int kgdb_nmi_num_readers ;
 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void kgdb_nmi_tty_close(struct tty_struct *tty, struct file *file)
{
 struct kgdb_nmi_tty_priv *priv = tty->driver_data;
 unsigned int mode = file->f_flags & O_ACCMODE;

 if (mode == O_RDONLY || mode == O_RDWR)
  atomic_dec(&kgdb_nmi_num_readers);

 tty_port_close(&priv->port, tty, file);
}
