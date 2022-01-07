
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_5__ {int hw_mac; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct qedi_ctx {int cdev; TYPE_2__ dev_info; scalar_t__ ll2_mtu; int dbg_ctx; } ;
struct qed_ll2_params {int rx_vlan_stripping; int ll2_mac_address; scalar_t__ drop_ttl0_packets; scalar_t__ mtu; } ;
typedef int params ;
struct TYPE_8__ {TYPE_3__* ll2; } ;
struct TYPE_7__ {int (* start ) (int ,struct qed_ll2_params*) ;int (* stop ) (int ) ;} ;


 scalar_t__ IPV6_HDR_LEN ;
 int QEDI_INFO (int *,int ,char*,scalar_t__,scalar_t__) ;
 int QEDI_LOG_INFO ;
 scalar_t__ TCP_HDR_LEN ;
 int ether_addr_copy (int ,int ) ;
 int memset (struct qed_ll2_params*,int ,int) ;
 int qedi_ll2_free_skbs (struct qedi_ctx*) ;
 TYPE_4__* qedi_ops ;
 int qedi_recover_all_conns (struct qedi_ctx*) ;
 int stub1 (int ) ;
 int stub2 (int ,struct qed_ll2_params*) ;

void qedi_reset_host_mtu(struct qedi_ctx *qedi, u16 mtu)
{
 struct qed_ll2_params params;

 qedi_recover_all_conns(qedi);

 qedi_ops->ll2->stop(qedi->cdev);
 qedi_ll2_free_skbs(qedi);

 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_INFO, "old MTU %u, new MTU %u\n",
    qedi->ll2_mtu, mtu);
 memset(&params, 0, sizeof(params));
 qedi->ll2_mtu = mtu;
 params.mtu = qedi->ll2_mtu + IPV6_HDR_LEN + TCP_HDR_LEN;
 params.drop_ttl0_packets = 0;
 params.rx_vlan_stripping = 1;
 ether_addr_copy(params.ll2_mac_address, qedi->dev_info.common.hw_mac);
 qedi_ops->ll2->start(qedi->cdev, &params);
}
