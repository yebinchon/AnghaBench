
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iucv_path {struct iucv_connection* private; } ;
struct iucv_message {int dummy; } ;
struct iucv_event {struct iucv_message* data; struct iucv_connection* conn; } ;
struct iucv_connection {int fsm; } ;


 int CONN_EVENT_TXDONE ;
 int fsm_event (int ,int ,struct iucv_event*) ;

__attribute__((used)) static void netiucv_callback_txdone(struct iucv_path *path,
        struct iucv_message *msg)
{
 struct iucv_connection *conn = path->private;
 struct iucv_event ev;

 ev.conn = conn;
 ev.data = msg;
 fsm_event(conn->fsm, CONN_EVENT_TXDONE, &ev);
}
