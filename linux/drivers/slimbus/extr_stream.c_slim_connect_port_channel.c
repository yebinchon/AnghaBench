
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct slim_val_inf {int member_1; int * member_4; int * member_3; int * member_2; int member_0; } ;
struct slim_stream_runtime {struct slim_device* dev; } ;
struct TYPE_5__ {int state; int id; } ;
struct slim_port {scalar_t__ direction; int state; TYPE_1__ ch; int id; } ;
struct slim_device {int ctrl; int laddr; } ;
struct TYPE_6__ {int mc; } ;


 int DEFINE_SLIM_LDEST_TXN (TYPE_2__,int ,int,int ,struct slim_val_inf*) ;
 int SLIM_CH_STATE_ASSOCIATED ;
 int SLIM_MSG_MC_CONNECT_SINK ;
 int SLIM_MSG_MC_CONNECT_SOURCE ;
 scalar_t__ SLIM_PORT_SINK ;
 int SLIM_PORT_UNCONFIGURED ;
 int slim_do_transfer (int ,TYPE_2__*) ;
 TYPE_2__ txn ;

__attribute__((used)) static int slim_connect_port_channel(struct slim_stream_runtime *stream,
         struct slim_port *port)
{
 struct slim_device *sdev = stream->dev;
 u8 wbuf[2];
 struct slim_val_inf msg = {0, 2, ((void*)0), wbuf, ((void*)0)};
 u8 mc = SLIM_MSG_MC_CONNECT_SOURCE;
 DEFINE_SLIM_LDEST_TXN(txn, mc, 6, stream->dev->laddr, &msg);

 if (port->direction == SLIM_PORT_SINK)
  txn.mc = SLIM_MSG_MC_CONNECT_SINK;

 wbuf[0] = port->id;
 wbuf[1] = port->ch.id;
 port->ch.state = SLIM_CH_STATE_ASSOCIATED;
 port->state = SLIM_PORT_UNCONFIGURED;

 return slim_do_transfer(sdev->ctrl, &txn);
}
