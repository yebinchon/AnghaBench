
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {size_t vtermno; } ;
struct hvc_opal_priv {int hvsi; } ;


 struct hvc_opal_priv** hvc_opal_privs ;
 int hvsilib_close (int *,struct hvc_struct*) ;
 int notifier_del_irq (struct hvc_struct*,int) ;
 int pr_devel (char*,size_t) ;

__attribute__((used)) static void hvc_opal_hvsi_close(struct hvc_struct *hp, int data)
{
 struct hvc_opal_priv *pv = hvc_opal_privs[hp->vtermno];

 pr_devel("HVSI@%x: do close !\n", hp->vtermno);

 hvsilib_close(&pv->hvsi, hp);

 notifier_del_irq(hp, data);
}
