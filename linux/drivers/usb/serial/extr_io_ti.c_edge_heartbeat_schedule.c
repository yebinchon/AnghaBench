
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edgeport_serial {int heartbeat_work; int use_heartbeat; } ;


 int FW_HEARTBEAT_SECS ;
 int HZ ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void edge_heartbeat_schedule(struct edgeport_serial *edge_serial)
{
 if (!edge_serial->use_heartbeat)
  return;

 schedule_delayed_work(&edge_serial->heartbeat_work,
   FW_HEARTBEAT_SECS * HZ);
}
