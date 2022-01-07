
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fc_wka_port {int work; int refcount; } ;


 int HZ ;
 scalar_t__ atomic_dec_return (int *) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void zfcp_fc_wka_port_put(struct zfcp_fc_wka_port *wka_port)
{
 if (atomic_dec_return(&wka_port->refcount) != 0)
  return;

 schedule_delayed_work(&wka_port->work, HZ / 100);
}
