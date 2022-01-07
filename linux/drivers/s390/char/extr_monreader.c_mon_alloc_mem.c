
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_private {void** msg_array; } ;
struct mon_msg {int dummy; } ;


 int GFP_KERNEL ;
 int MON_MSGLIM ;
 void* kzalloc (int,int ) ;
 int mon_free_mem (struct mon_private*) ;

__attribute__((used)) static struct mon_private *mon_alloc_mem(void)
{
 int i;
 struct mon_private *monpriv;

 monpriv = kzalloc(sizeof(struct mon_private), GFP_KERNEL);
 if (!monpriv)
  return ((void*)0);
 for (i = 0; i < MON_MSGLIM; i++) {
  monpriv->msg_array[i] = kzalloc(sizeof(struct mon_msg),
          GFP_KERNEL);
  if (!monpriv->msg_array[i]) {
   mon_free_mem(monpriv);
   return ((void*)0);
  }
 }
 return monpriv;
}
