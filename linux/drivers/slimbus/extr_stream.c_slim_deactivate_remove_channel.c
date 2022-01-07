
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
struct slim_port {TYPE_1__ ch; } ;
struct slim_device {int ctrl; int laddr; } ;
struct TYPE_6__ {int mc; } ;


 int DEFINE_SLIM_LDEST_TXN (TYPE_2__,int ,int,int ,struct slim_val_inf*) ;
 int SLIM_CH_STATE_REMOVED ;
 int SLIM_MSG_MC_NEXT_DEACTIVATE_CHANNEL ;
 int SLIM_MSG_MC_NEXT_REMOVE_CHANNEL ;
 int slim_do_transfer (int ,TYPE_2__*) ;
 TYPE_2__ txn ;

__attribute__((used)) static int slim_deactivate_remove_channel(struct slim_stream_runtime *stream,
       struct slim_port *port)
{
 struct slim_device *sdev = stream->dev;
 u8 wbuf[1];
 struct slim_val_inf msg = {0, 1, ((void*)0), wbuf, ((void*)0)};
 u8 mc = SLIM_MSG_MC_NEXT_DEACTIVATE_CHANNEL;
 DEFINE_SLIM_LDEST_TXN(txn, mc, 5, stream->dev->laddr, &msg);
 int ret;

 wbuf[0] = port->ch.id;
 ret = slim_do_transfer(sdev->ctrl, &txn);
 if (ret)
  return ret;

 txn.mc = SLIM_MSG_MC_NEXT_REMOVE_CHANNEL;
 port->ch.state = SLIM_CH_STATE_REMOVED;

 return slim_do_transfer(sdev->ctrl, &txn);
}
