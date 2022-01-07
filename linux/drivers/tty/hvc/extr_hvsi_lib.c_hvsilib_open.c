
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_priv {int tty; int termno; } ;
struct hvc_struct {int port; } ;


 int hvsilib_establish (struct hvsi_priv*) ;
 int pr_devel (char*,int ) ;
 int tty_port_tty_get (int *) ;

int hvsilib_open(struct hvsi_priv *pv, struct hvc_struct *hp)
{
 pr_devel("HVSI@%x: open !\n", pv->termno);


 pv->tty = tty_port_tty_get(&hp->port);

 hvsilib_establish(pv);

 return 0;
}
