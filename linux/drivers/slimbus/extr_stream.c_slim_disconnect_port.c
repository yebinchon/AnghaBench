
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slim_val_inf {int member_1; int * member_4; int * member_3; int * member_2; int member_0; } ;
struct slim_stream_runtime {struct slim_device* dev; } ;
struct TYPE_2__ {int state; } ;
struct slim_port {int state; TYPE_1__ ch; int id; } ;
struct slim_device {int ctrl; int laddr; } ;


 int DEFINE_SLIM_LDEST_TXN (int ,int ,int,int ,struct slim_val_inf*) ;
 int SLIM_CH_STATE_DISCONNECTED ;
 int SLIM_MSG_MC_DISCONNECT_PORT ;
 int SLIM_PORT_DISCONNECTED ;
 int slim_do_transfer (int ,int *) ;
 int txn ;

__attribute__((used)) static int slim_disconnect_port(struct slim_stream_runtime *stream,
    struct slim_port *port)
{
 struct slim_device *sdev = stream->dev;
 u8 wbuf[1];
 struct slim_val_inf msg = {0, 1, ((void*)0), wbuf, ((void*)0)};
 u8 mc = SLIM_MSG_MC_DISCONNECT_PORT;
 DEFINE_SLIM_LDEST_TXN(txn, mc, 5, stream->dev->laddr, &msg);

 wbuf[0] = port->id;
 port->ch.state = SLIM_CH_STATE_DISCONNECTED;
 port->state = SLIM_PORT_DISCONNECTED;

 return slim_do_transfer(sdev->ctrl, &txn);
}
