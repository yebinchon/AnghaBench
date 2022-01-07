
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; } ;
struct zs_port {struct zs_scc* scc; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int zs_raw_transmit_chars (struct zs_port*) ;

__attribute__((used)) static void zs_transmit_chars(struct zs_port *zport)
{
 struct zs_scc *scc = zport->scc;

 spin_lock(&scc->zlock);
 zs_raw_transmit_chars(zport);
 spin_unlock(&scc->zlock);
}
