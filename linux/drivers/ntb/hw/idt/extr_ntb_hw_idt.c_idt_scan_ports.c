
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {TYPE_3__* pdev; } ;
struct idt_ntb_dev {size_t port; size_t* port_idx_map; size_t* part_idx_map; size_t peer_cnt; TYPE_4__ ntb; TYPE_2__* peers; TYPE_1__* swcfg; void* part; } ;
struct TYPE_12__ {int sts; } ;
struct TYPE_11__ {int sts; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {unsigned char port; unsigned char part; } ;
struct TYPE_7__ {unsigned char port_cnt; unsigned char* ports; } ;


 int ACT ;
 int EINVAL ;
 int ENODEV ;
 void* GET_FIELD (int ,int ) ;
 int IDT_NT_PCIELCAP ;
 scalar_t__ IS_FLD_SET (int ,int ,int ) ;
 int NT ;
 int NTDMA ;
 int PCIELCAP_PORTNUM ;
 int SWPARTxSTS_STATE ;
 int SWPORTxSTS_MODE ;
 int SWPORTxSTS_SWPART ;
 int USNT ;
 int USNTDMA ;
 int dev_dbg (int *,char*,unsigned char,size_t) ;
 int dev_warn (int *,char*) ;
 int idt_nt_read (struct idt_ntb_dev*,int ) ;
 int idt_sw_read (struct idt_ntb_dev*,int ) ;
 int memset (size_t*,int ,int) ;
 TYPE_6__* partdata_tbl ;
 TYPE_5__* portdata_tbl ;

__attribute__((used)) static int idt_scan_ports(struct idt_ntb_dev *ndev)
{
 unsigned char pidx, port, part;
 u32 data, portsts, partsts;


 data = idt_nt_read(ndev, IDT_NT_PCIELCAP);
 ndev->port = GET_FIELD(PCIELCAP_PORTNUM, data);


 portsts = idt_sw_read(ndev, portdata_tbl[ndev->port].sts);
 ndev->part = GET_FIELD(SWPORTxSTS_SWPART, portsts);


 memset(ndev->port_idx_map, -EINVAL, sizeof(ndev->port_idx_map));
 memset(ndev->part_idx_map, -EINVAL, sizeof(ndev->part_idx_map));





 ndev->peer_cnt = 0;
 for (pidx = 0; pidx < ndev->swcfg->port_cnt; pidx++) {
  port = ndev->swcfg->ports[pidx];

  if (port == ndev->port)
   continue;


  portsts = idt_sw_read(ndev, portdata_tbl[port].sts);
  part = GET_FIELD(SWPORTxSTS_SWPART, portsts);


  partsts = idt_sw_read(ndev, partdata_tbl[part].sts);

  if (IS_FLD_SET(SWPARTxSTS_STATE, partsts, ACT) &&
      (IS_FLD_SET(SWPORTxSTS_MODE, portsts, NT) ||
       IS_FLD_SET(SWPORTxSTS_MODE, portsts, USNT) ||
       IS_FLD_SET(SWPORTxSTS_MODE, portsts, USNTDMA) ||
       IS_FLD_SET(SWPORTxSTS_MODE, portsts, NTDMA))) {

   ndev->peers[ndev->peer_cnt].port = port;
   ndev->peers[ndev->peer_cnt].part = part;

   ndev->port_idx_map[port] = ndev->peer_cnt;
   ndev->part_idx_map[part] = ndev->peer_cnt;
   ndev->peer_cnt++;
  }
 }

 dev_dbg(&ndev->ntb.pdev->dev, "Local port: %hhu, num of peers: %hhu\n",
  ndev->port, ndev->peer_cnt);


 if (ndev->peer_cnt == 0) {
  dev_warn(&ndev->ntb.pdev->dev, "No active peer found\n");
  return -ENODEV;
 }

 return 0;
}
