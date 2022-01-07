
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iucv_path {struct iucv_connection* private; } ;
struct iucv_connection {int fsm; } ;


 int CONN_EVENT_CONN_ACK ;
 int fsm_event (int ,int ,struct iucv_connection*) ;

__attribute__((used)) static void netiucv_callback_connack(struct iucv_path *path, u8 ipuser[16])
{
 struct iucv_connection *conn = path->private;

 fsm_event(conn->fsm, CONN_EVENT_CONN_ACK, conn);
}
