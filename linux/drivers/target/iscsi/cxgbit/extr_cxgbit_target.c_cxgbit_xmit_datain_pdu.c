
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_datain_req {int recovery; } ;
struct iscsi_datain {scalar_t__ length; int offset; } ;
struct iscsi_conn {TYPE_2__* sess; TYPE_1__* conn_ops; struct cxgbit_sock* context; } ;
struct TYPE_6__ {int data_length; } ;
struct iscsi_cmd {TYPE_3__ se_cmd; } ;
struct cxgbit_sock {scalar_t__ max_iso_npdu; } ;
struct TYPE_5__ {int tx_data_octets; } ;
struct TYPE_4__ {int MaxRecvDataSegmentLength; } ;


 int atomic_long_add (scalar_t__,int *) ;
 int cxgbit_tx_datain (struct cxgbit_sock*,struct iscsi_cmd*,struct iscsi_datain const*) ;
 int cxgbit_tx_datain_iso (struct cxgbit_sock*,struct iscsi_cmd*,struct iscsi_datain_req*) ;

__attribute__((used)) static int
cxgbit_xmit_datain_pdu(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
         struct iscsi_datain_req *dr,
         const struct iscsi_datain *datain)
{
 struct cxgbit_sock *csk = conn->context;
 u32 data_length = cmd->se_cmd.data_length;
 u32 padding = ((-data_length) & 3);
 u32 mrdsl = conn->conn_ops->MaxRecvDataSegmentLength;

 if ((data_length > mrdsl) && (!dr->recovery) &&
     (!padding) && (!datain->offset) && csk->max_iso_npdu) {
  atomic_long_add(data_length - datain->length,
    &conn->sess->tx_data_octets);
  return cxgbit_tx_datain_iso(csk, cmd, dr);
 }

 return cxgbit_tx_datain(csk, cmd, datain);
}
