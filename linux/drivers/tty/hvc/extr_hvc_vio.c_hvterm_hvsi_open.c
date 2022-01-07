
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvterm_priv {int hvsi; int termno; } ;
struct hvc_struct {size_t vtermno; } ;


 int hvsilib_open (int *,struct hvc_struct*) ;
 struct hvterm_priv** hvterm_privs ;
 int notifier_add_irq (struct hvc_struct*,int) ;
 int pr_devel (char*,int ) ;

__attribute__((used)) static int hvterm_hvsi_open(struct hvc_struct *hp, int data)
{
 struct hvterm_priv *pv = hvterm_privs[hp->vtermno];
 int rc;

 pr_devel("HVSI@%x: open !\n", pv->termno);

 rc = notifier_add_irq(hp, data);
 if (rc)
  return rc;

 return hvsilib_open(&pv->hvsi, hp);
}
