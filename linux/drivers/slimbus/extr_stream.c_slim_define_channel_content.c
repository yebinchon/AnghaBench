
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slim_val_inf {int member_1; int* member_3; int * member_4; int * member_2; int member_0; } ;
struct slim_stream_runtime {scalar_t__ prot; int bps; struct slim_device* dev; } ;
struct TYPE_2__ {int id; int prrate; int data_fmt; int aux_fmt; int state; } ;
struct slim_port {TYPE_1__ ch; } ;
struct slim_device {int ctrl; int laddr; } ;


 int DEFINE_SLIM_LDEST_TXN (int ,int,int,int ,struct slim_val_inf*) ;
 int SLIM_CHANNEL_CONTENT_FL ;
 int SLIM_CH_STATE_CONTENT_DEFINED ;
 int SLIM_MSG_MC_NEXT_DEFINE_CONTENT ;
 scalar_t__ SLIM_PROTO_ISO ;
 int SLIM_SLOT_LEN_BITS ;
 int slim_do_transfer (int ,int *) ;
 int txn ;

__attribute__((used)) static int slim_define_channel_content(struct slim_stream_runtime *stream,
           struct slim_port *port)
{
 struct slim_device *sdev = stream->dev;
 u8 wbuf[4];
 struct slim_val_inf msg = {0, 4, ((void*)0), wbuf, ((void*)0)};
 u8 mc = SLIM_MSG_MC_NEXT_DEFINE_CONTENT;
 DEFINE_SLIM_LDEST_TXN(txn, mc, 8, stream->dev->laddr, &msg);

 wbuf[0] = port->ch.id;
 wbuf[1] = port->ch.prrate;


 if (stream->prot != SLIM_PROTO_ISO)
  wbuf[1] |= SLIM_CHANNEL_CONTENT_FL;

 wbuf[2] = port->ch.data_fmt | (port->ch.aux_fmt << 4);
 wbuf[3] = stream->bps/SLIM_SLOT_LEN_BITS;
 port->ch.state = SLIM_CH_STATE_CONTENT_DEFINED;

 return slim_do_transfer(sdev->ctrl, &txn);
}
