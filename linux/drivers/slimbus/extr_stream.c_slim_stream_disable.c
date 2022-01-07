
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct slim_stream_runtime {int num_ports; int * ports; TYPE_1__* dev; } ;
struct slim_controller {int (* disable_stream ) (struct slim_stream_runtime*) ;} ;
struct TYPE_6__ {int mc; } ;
struct TYPE_5__ {struct slim_controller* ctrl; } ;


 int DEFINE_SLIM_BCAST_TXN (TYPE_2__,int ,int,int ,int *) ;
 int SLIM_LA_MANAGER ;
 int SLIM_MSG_MC_BEGIN_RECONFIGURATION ;
 int SLIM_MSG_MC_RECONFIGURE_NOW ;
 int slim_deactivate_remove_channel (struct slim_stream_runtime*,int *) ;
 int slim_do_transfer (struct slim_controller*,TYPE_2__*) ;
 int stub1 (struct slim_stream_runtime*) ;
 TYPE_2__ txn ;

int slim_stream_disable(struct slim_stream_runtime *stream)
{
 DEFINE_SLIM_BCAST_TXN(txn, SLIM_MSG_MC_BEGIN_RECONFIGURATION,
    3, SLIM_LA_MANAGER, ((void*)0));
 struct slim_controller *ctrl = stream->dev->ctrl;
 int ret, i;

 if (ctrl->disable_stream)
  ctrl->disable_stream(stream);

 ret = slim_do_transfer(ctrl, &txn);
 if (ret)
  return ret;

 for (i = 0; i < stream->num_ports; i++)
  slim_deactivate_remove_channel(stream, &stream->ports[i]);

 txn.mc = SLIM_MSG_MC_RECONFIGURE_NOW;

 return slim_do_transfer(ctrl, &txn);
}
