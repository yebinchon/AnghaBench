
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {scalar_t__ supported_classes; int list; int unit_list; int status; } ;
struct list_head {int dummy; } ;


 int ZFCP_STATUS_COMMON_NOESC ;
 int atomic_andnot (int,int *) ;
 int atomic_read (int *) ;
 int list_empty (int *) ;
 int list_move_tail (int *,struct list_head*) ;

__attribute__((used)) static void zfcp_fc_validate_port(struct zfcp_port *port, struct list_head *lh)
{
 if (!(atomic_read(&port->status) & ZFCP_STATUS_COMMON_NOESC))
  return;

 atomic_andnot(ZFCP_STATUS_COMMON_NOESC, &port->status);

 if ((port->supported_classes != 0) ||
     !list_empty(&port->unit_list))
  return;

 list_move_tail(&port->list, lh);
}
