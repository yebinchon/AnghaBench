
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ql_mpi_coredump {int dummy; } ;
struct ql_adapter {int mpi_mutex; int ide_completion; int mpi_core_to_log; int mpi_idc_work; int mpi_port_cfg_work; int mpi_work; int mpi_reset_work; int asic_reset_work; int workqueue; void* tx_max_coalesced_frames; void* rx_max_coalesced_frames; void* tx_coalesce_usecs; void* rx_coalesce_usecs; int rx_ring_size; int tx_ring_size; int current_mac_addr; TYPE_1__* nic_ops; int flags; int * mpi_coredump; int stats_lock; int hw_lock; int msg_enable; void* doorbell_area; int doorbell_area_size; void* reg_base; struct pci_dev* pdev; struct net_device* ndev; } ;
struct pci_dev {int needs_freset; int dev; } ;
struct net_device {int name; int addr_len; int dev_addr; } ;
struct TYPE_2__ {int (* get_flash ) (struct ql_adapter*) ;} ;


 void* DFLT_COALESCE_WAIT ;
 void* DFLT_INTER_FRAME_WAIT ;
 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int DRV_STRING ;
 int DRV_VERSION ;
 int EIO ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int NUM_RX_RING_ENTRIES ;
 int NUM_TX_RING_ENTRIES ;
 int QL_DMA64 ;
 int QL_FRC_COREDUMP ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (char*,int ,int ) ;
 int debug ;
 int default_msg ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int ,...) ;
 int init_completion (int *) ;
 void* ioremap_nocache (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (void*,int ,int) ;
 int mutex_init (int *) ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int netif_msg_init (int ,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcie_set_readrq (struct pci_dev*,int) ;
 int ql_asic_reset_work ;
 int ql_get_board_info (struct ql_adapter*) ;
 int ql_mpi_core_to_log ;
 int ql_mpi_idc_work ;
 int ql_mpi_port_cfg_work ;
 int ql_mpi_reset_work ;
 int ql_mpi_work ;
 int ql_release_all (struct pci_dev*) ;
 scalar_t__ qlge_force_coredump ;
 scalar_t__ qlge_mpi_coredump ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct ql_adapter*) ;
 int * vmalloc (int) ;

__attribute__((used)) static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
     int cards_found)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 int err = 0;

 memset((void *)qdev, 0, sizeof(*qdev));
 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "PCI device enable failed.\n");
  return err;
 }

 qdev->ndev = ndev;
 qdev->pdev = pdev;
 pci_set_drvdata(pdev, ndev);


 err = pcie_set_readrq(pdev, 4096);
 if (err) {
  dev_err(&pdev->dev, "Set readrq failed.\n");
  goto err_out1;
 }

 err = pci_request_regions(pdev, DRV_NAME);
 if (err) {
  dev_err(&pdev->dev, "PCI region request failed.\n");
  return err;
 }

 pci_set_master(pdev);
 if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(64))) {
  set_bit(QL_DMA64, &qdev->flags);
  err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
 } else {
  err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (!err)
         err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
 }

 if (err) {
  dev_err(&pdev->dev, "No usable DMA configuration.\n");
  goto err_out2;
 }


 pdev->needs_freset = 1;
 pci_save_state(pdev);
 qdev->reg_base =
     ioremap_nocache(pci_resource_start(pdev, 1),
       pci_resource_len(pdev, 1));
 if (!qdev->reg_base) {
  dev_err(&pdev->dev, "Register mapping failed.\n");
  err = -ENOMEM;
  goto err_out2;
 }

 qdev->doorbell_area_size = pci_resource_len(pdev, 3);
 qdev->doorbell_area =
     ioremap_nocache(pci_resource_start(pdev, 3),
       pci_resource_len(pdev, 3));
 if (!qdev->doorbell_area) {
  dev_err(&pdev->dev, "Doorbell register mapping failed.\n");
  err = -ENOMEM;
  goto err_out2;
 }

 err = ql_get_board_info(qdev);
 if (err) {
  dev_err(&pdev->dev, "Register access failed.\n");
  err = -EIO;
  goto err_out2;
 }
 qdev->msg_enable = netif_msg_init(debug, default_msg);
 spin_lock_init(&qdev->hw_lock);
 spin_lock_init(&qdev->stats_lock);

 if (qlge_mpi_coredump) {
  qdev->mpi_coredump =
   vmalloc(sizeof(struct ql_mpi_coredump));
  if (qdev->mpi_coredump == ((void*)0)) {
   err = -ENOMEM;
   goto err_out2;
  }
  if (qlge_force_coredump)
   set_bit(QL_FRC_COREDUMP, &qdev->flags);
 }

 err = qdev->nic_ops->get_flash(qdev);
 if (err) {
  dev_err(&pdev->dev, "Invalid FLASH.\n");
  goto err_out2;
 }


 memcpy(qdev->current_mac_addr, ndev->dev_addr, ndev->addr_len);


 qdev->tx_ring_size = NUM_TX_RING_ENTRIES;
 qdev->rx_ring_size = NUM_RX_RING_ENTRIES;


 qdev->rx_coalesce_usecs = DFLT_COALESCE_WAIT;
 qdev->tx_coalesce_usecs = DFLT_COALESCE_WAIT;
 qdev->rx_max_coalesced_frames = DFLT_INTER_FRAME_WAIT;
 qdev->tx_max_coalesced_frames = DFLT_INTER_FRAME_WAIT;




 qdev->workqueue = alloc_ordered_workqueue("%s", WQ_MEM_RECLAIM,
        ndev->name);
 if (!qdev->workqueue) {
  err = -ENOMEM;
  goto err_out2;
 }

 INIT_DELAYED_WORK(&qdev->asic_reset_work, ql_asic_reset_work);
 INIT_DELAYED_WORK(&qdev->mpi_reset_work, ql_mpi_reset_work);
 INIT_DELAYED_WORK(&qdev->mpi_work, ql_mpi_work);
 INIT_DELAYED_WORK(&qdev->mpi_port_cfg_work, ql_mpi_port_cfg_work);
 INIT_DELAYED_WORK(&qdev->mpi_idc_work, ql_mpi_idc_work);
 INIT_DELAYED_WORK(&qdev->mpi_core_to_log, ql_mpi_core_to_log);
 init_completion(&qdev->ide_completion);
 mutex_init(&qdev->mpi_mutex);

 if (!cards_found) {
  dev_info(&pdev->dev, "%s\n", DRV_STRING);
  dev_info(&pdev->dev, "Driver name: %s, Version: %s.\n",
    DRV_NAME, DRV_VERSION);
 }
 return 0;
err_out2:
 ql_release_all(pdev);
err_out1:
 pci_disable_device(pdev);
 return err;
}
