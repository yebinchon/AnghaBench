#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ql_mpi_coredump {int dummy; } ;
struct ql_adapter {int /*<<< orphan*/  mpi_mutex; int /*<<< orphan*/  ide_completion; int /*<<< orphan*/  mpi_core_to_log; int /*<<< orphan*/  mpi_idc_work; int /*<<< orphan*/  mpi_port_cfg_work; int /*<<< orphan*/  mpi_work; int /*<<< orphan*/  mpi_reset_work; int /*<<< orphan*/  asic_reset_work; int /*<<< orphan*/  workqueue; void* tx_max_coalesced_frames; void* rx_max_coalesced_frames; void* tx_coalesce_usecs; void* rx_coalesce_usecs; int /*<<< orphan*/  rx_ring_size; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  current_mac_addr; TYPE_1__* nic_ops; int /*<<< orphan*/  flags; int /*<<< orphan*/ * mpi_coredump; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  msg_enable; void* doorbell_area; int /*<<< orphan*/  doorbell_area_size; void* reg_base; struct pci_dev* pdev; struct net_device* ndev; } ;
struct pci_dev {int needs_freset; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int (* get_flash ) (struct ql_adapter*) ;} ;

/* Variables and functions */
 void* DFLT_COALESCE_WAIT ; 
 void* DFLT_INTER_FRAME_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_STRING ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_RX_RING_ENTRIES ; 
 int /*<<< orphan*/  NUM_TX_RING_ENTRIES ; 
 int /*<<< orphan*/  QL_DMA64 ; 
 int /*<<< orphan*/  QL_FRC_COREDUMP ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  default_msg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ql_adapter* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  ql_asic_reset_work ; 
 int FUNC23 (struct ql_adapter*) ; 
 int /*<<< orphan*/  ql_mpi_core_to_log ; 
 int /*<<< orphan*/  ql_mpi_idc_work ; 
 int /*<<< orphan*/  ql_mpi_port_cfg_work ; 
 int /*<<< orphan*/  ql_mpi_reset_work ; 
 int /*<<< orphan*/  ql_mpi_work ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 scalar_t__ qlge_force_coredump ; 
 scalar_t__ qlge_mpi_coredump ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int FUNC27 (struct ql_adapter*) ; 
 int /*<<< orphan*/ * FUNC28 (int) ; 

__attribute__((used)) static int FUNC29(struct pci_dev *pdev, struct net_device *ndev,
			  int cards_found)
{
	struct ql_adapter *qdev = FUNC10(ndev);
	int err = 0;

	FUNC8((void *)qdev, 0, sizeof(*qdev));
	err = FUNC13(pdev);
	if (err) {
		FUNC3(&pdev->dev, "PCI device enable failed.\n");
		return err;
	}

	qdev->ndev = ndev;
	qdev->pdev = pdev;
	FUNC20(pdev, ndev);

	/* Set PCIe read request size */
	err = FUNC22(pdev, 4096);
	if (err) {
		FUNC3(&pdev->dev, "Set readrq failed.\n");
		goto err_out1;
	}

	err = FUNC14(pdev, DRV_NAME);
	if (err) {
		FUNC3(&pdev->dev, "PCI region request failed.\n");
		return err;
	}

	FUNC21(pdev);
	if (!FUNC19(pdev, FUNC0(64))) {
		FUNC25(QL_DMA64, &qdev->flags);
		err = FUNC18(pdev, FUNC0(64));
	} else {
		err = FUNC19(pdev, FUNC0(32));
		if (!err)
		       err = FUNC18(pdev, FUNC0(32));
	}

	if (err) {
		FUNC3(&pdev->dev, "No usable DMA configuration.\n");
		goto err_out2;
	}

	/* Set PCIe reset type for EEH to fundamental. */
	pdev->needs_freset = 1;
	FUNC17(pdev);
	qdev->reg_base =
	    FUNC6(FUNC16(pdev, 1),
			    FUNC15(pdev, 1));
	if (!qdev->reg_base) {
		FUNC3(&pdev->dev, "Register mapping failed.\n");
		err = -ENOMEM;
		goto err_out2;
	}

	qdev->doorbell_area_size = FUNC15(pdev, 3);
	qdev->doorbell_area =
	    FUNC6(FUNC16(pdev, 3),
			    FUNC15(pdev, 3));
	if (!qdev->doorbell_area) {
		FUNC3(&pdev->dev, "Doorbell register mapping failed.\n");
		err = -ENOMEM;
		goto err_out2;
	}

	err = FUNC23(qdev);
	if (err) {
		FUNC3(&pdev->dev, "Register access failed.\n");
		err = -EIO;
		goto err_out2;
	}
	qdev->msg_enable = FUNC11(debug, default_msg);
	FUNC26(&qdev->hw_lock);
	FUNC26(&qdev->stats_lock);

	if (qlge_mpi_coredump) {
		qdev->mpi_coredump =
			FUNC28(sizeof(struct ql_mpi_coredump));
		if (qdev->mpi_coredump == NULL) {
			err = -ENOMEM;
			goto err_out2;
		}
		if (qlge_force_coredump)
			FUNC25(QL_FRC_COREDUMP, &qdev->flags);
	}
	/* make sure the EEPROM is good */
	err = qdev->nic_ops->get_flash(qdev);
	if (err) {
		FUNC3(&pdev->dev, "Invalid FLASH.\n");
		goto err_out2;
	}

	/* Keep local copy of current mac address. */
	FUNC7(qdev->current_mac_addr, ndev->dev_addr, ndev->addr_len);

	/* Set up the default ring sizes. */
	qdev->tx_ring_size = NUM_TX_RING_ENTRIES;
	qdev->rx_ring_size = NUM_RX_RING_ENTRIES;

	/* Set up the coalescing parameters. */
	qdev->rx_coalesce_usecs = DFLT_COALESCE_WAIT;
	qdev->tx_coalesce_usecs = DFLT_COALESCE_WAIT;
	qdev->rx_max_coalesced_frames = DFLT_INTER_FRAME_WAIT;
	qdev->tx_max_coalesced_frames = DFLT_INTER_FRAME_WAIT;

	/*
	 * Set up the operating parameters.
	 */
	qdev->workqueue = FUNC2("%s", WQ_MEM_RECLAIM,
						  ndev->name);
	if (!qdev->workqueue) {
		err = -ENOMEM;
		goto err_out2;
	}

	FUNC1(&qdev->asic_reset_work, ql_asic_reset_work);
	FUNC1(&qdev->mpi_reset_work, ql_mpi_reset_work);
	FUNC1(&qdev->mpi_work, ql_mpi_work);
	FUNC1(&qdev->mpi_port_cfg_work, ql_mpi_port_cfg_work);
	FUNC1(&qdev->mpi_idc_work, ql_mpi_idc_work);
	FUNC1(&qdev->mpi_core_to_log, ql_mpi_core_to_log);
	FUNC5(&qdev->ide_completion);
	FUNC9(&qdev->mpi_mutex);

	if (!cards_found) {
		FUNC4(&pdev->dev, "%s\n", DRV_STRING);
		FUNC4(&pdev->dev, "Driver name: %s, Version: %s.\n",
			 DRV_NAME, DRV_VERSION);
	}
	return 0;
err_out2:
	FUNC24(pdev);
err_out1:
	FUNC12(pdev);
	return err;
}