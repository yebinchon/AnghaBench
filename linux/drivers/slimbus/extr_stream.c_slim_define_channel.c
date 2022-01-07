
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slim_val_inf {int member_1; int* member_3; int * member_4; int * member_2; int member_0; } ;
struct slim_stream_runtime {int prot; int bps; int ratem; struct slim_device* dev; } ;
struct TYPE_2__ {int seg_dist; int id; int state; } ;
struct slim_port {TYPE_1__ ch; } ;
struct slim_device {int ctrl; int laddr; } ;


 int DEFINE_SLIM_LDEST_TXN (int ,int,int,int ,struct slim_val_inf*) ;
 int SLIM_CH_STATE_DEFINED ;
 int SLIM_MSG_MC_NEXT_DEFINE_CHANNEL ;
 int SLIM_PROTO_ISO ;
 int SLIM_SLOT_LEN_BITS ;
 int slim_do_transfer (int ,int *) ;
 int slim_get_segdist_code (int ) ;
 int txn ;

__attribute__((used)) static int slim_define_channel(struct slim_stream_runtime *stream,
           struct slim_port *port)
{
 struct slim_device *sdev = stream->dev;
 u8 wbuf[4];
 struct slim_val_inf msg = {0, 4, ((void*)0), wbuf, ((void*)0)};
 u8 mc = SLIM_MSG_MC_NEXT_DEFINE_CHANNEL;
 DEFINE_SLIM_LDEST_TXN(txn, mc, 8, stream->dev->laddr, &msg);

 port->ch.seg_dist = slim_get_segdist_code(stream->ratem);

 wbuf[0] = port->ch.id;
 wbuf[1] = port->ch.seg_dist & 0xFF;
 wbuf[2] = (stream->prot << 4) | ((port->ch.seg_dist & 0xF00) >> 8);
 if (stream->prot == SLIM_PROTO_ISO)
  wbuf[3] = stream->bps/SLIM_SLOT_LEN_BITS;
 else
  wbuf[3] = stream->bps/SLIM_SLOT_LEN_BITS + 1;

 port->ch.state = SLIM_CH_STATE_DEFINED;

 return slim_do_transfer(sdev->ctrl, &txn);
}
