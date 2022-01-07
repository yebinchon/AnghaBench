
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct slim_val_inf {int member_1; int * member_4; int * member_3; int * member_2; int member_0; } ;
struct slim_stream_runtime {struct slim_device* dev; } ;
struct TYPE_7__ {int state; int id; } ;
struct slim_port {TYPE_2__ ch; } ;
struct slim_device {int ctrl; int laddr; } ;
struct TYPE_8__ {TYPE_1__* msg; } ;
struct TYPE_6__ {int num_bytes; int * wbuf; } ;


 int DEFINE_SLIM_LDEST_TXN (TYPE_3__,int ,int,int ,struct slim_val_inf*) ;
 int SLIM_CH_STATE_ACTIVE ;
 int SLIM_MSG_MC_NEXT_ACTIVATE_CHANNEL ;
 int slim_do_transfer (int ,TYPE_3__*) ;
 TYPE_3__ txn ;

__attribute__((used)) static int slim_activate_channel(struct slim_stream_runtime *stream,
     struct slim_port *port)
{
 struct slim_device *sdev = stream->dev;
 u8 wbuf[1];
 struct slim_val_inf msg = {0, 1, ((void*)0), wbuf, ((void*)0)};
 u8 mc = SLIM_MSG_MC_NEXT_ACTIVATE_CHANNEL;
 DEFINE_SLIM_LDEST_TXN(txn, mc, 5, stream->dev->laddr, &msg);

 txn.msg->num_bytes = 1;
 txn.msg->wbuf = wbuf;
 wbuf[0] = port->ch.id;
 port->ch.state = SLIM_CH_STATE_ACTIVE;

 return slim_do_transfer(sdev->ctrl, &txn);
}
