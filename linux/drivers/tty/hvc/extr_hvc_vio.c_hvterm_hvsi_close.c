
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvterm_priv {int hvsi; int termno; } ;
struct hvc_struct {size_t vtermno; } ;


 int hvsilib_close (int *,struct hvc_struct*) ;
 struct hvterm_priv** hvterm_privs ;
 int notifier_del_irq (struct hvc_struct*,int) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static void hvterm_hvsi_close(struct hvc_struct *hp, int data)
{
 struct hvterm_priv *pv = hvterm_privs[hp->vtermno];

 pr_devel("HVSI@%x: do close !\n", pv->termno);

 hvsilib_close(&pv->hvsi, hp);

 notifier_del_irq(hp, data);
}
