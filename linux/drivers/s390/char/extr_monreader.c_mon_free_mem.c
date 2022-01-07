
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_private {struct mon_private** msg_array; } ;


 int MON_MSGLIM ;
 int kfree (struct mon_private*) ;

__attribute__((used)) static void mon_free_mem(struct mon_private *monpriv)
{
 int i;

 for (i = 0; i < MON_MSGLIM; i++)
  kfree(monpriv->msg_array[i]);
 kfree(monpriv);
}
