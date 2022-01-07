
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct kgdb_nmi_tty_priv* driver_data; } ;
struct kgdb_nmi_tty_priv {int port; } ;


 int tty_port_hangup (int *) ;

__attribute__((used)) static void kgdb_nmi_tty_hangup(struct tty_struct *tty)
{
 struct kgdb_nmi_tty_priv *priv = tty->driver_data;

 tty_port_hangup(&priv->port);
}
