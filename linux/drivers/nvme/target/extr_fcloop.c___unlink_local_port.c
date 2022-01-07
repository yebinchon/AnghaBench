
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcloop_lport {int lport_list; } ;


 int list_del (int *) ;

__attribute__((used)) static void
__unlink_local_port(struct fcloop_lport *lport)
{
 list_del(&lport->lport_list);
}
