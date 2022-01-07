
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int port; } ;


 int MAX_NR_CONSOLES ;
 int MIN_NR_CONSOLES ;
 int VT_BUSY (int) ;
 int console_lock () ;
 int console_unlock () ;
 int kfree (struct vc_data*) ;
 int tty_port_destroy (int *) ;
 struct vc_data* vc_deallocate (int) ;

__attribute__((used)) static void vt_disallocate_all(void)
{
 struct vc_data *vc[MAX_NR_CONSOLES];
 int i;

 console_lock();
 for (i = 1; i < MAX_NR_CONSOLES; i++)
  if (!VT_BUSY(i))
   vc[i] = vc_deallocate(i);
  else
   vc[i] = ((void*)0);
 console_unlock();

 for (i = 1; i < MAX_NR_CONSOLES; i++) {
  if (vc[i] && i >= MIN_NR_CONSOLES) {
   tty_port_destroy(&vc[i]->port);
   kfree(vc[i]);
  }
 }
}
