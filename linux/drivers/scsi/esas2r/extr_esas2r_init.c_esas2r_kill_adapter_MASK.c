#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct workqueue_struct {int dummy; } ;
struct esas2r_adapter {TYPE_2__* host; int /*<<< orphan*/  flags; int /*<<< orphan*/  flags2; TYPE_4__* pcid; int /*<<< orphan*/ * uncached; scalar_t__ uncached_phys; scalar_t__ uncached_size; int /*<<< orphan*/  fw_event_lock; struct workqueue_struct* fw_event_q; int /*<<< orphan*/ * local_atto_ioctl; int /*<<< orphan*/ * fs_api_buffer; scalar_t__ ppfs_api_buffer; scalar_t__ fs_api_buffer_size; int /*<<< orphan*/ * vda_buffer; scalar_t__ ppvda_buffer; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  counter; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; TYPE_1__ enable_cnt; int /*<<< orphan*/  pin; int /*<<< orphan*/  irq; int /*<<< orphan*/  msi_enabled; int /*<<< orphan*/  msix_enabled; } ;
struct TYPE_8__ {int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_INIT_DONE ; 
 int /*<<< orphan*/  AF_DEGRADED_MODE ; 
 int /*<<< orphan*/  ESAS2R_LOG_INFO ; 
 scalar_t__ VDA_MAX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 struct esas2r_adapter** esas2r_adapters ; 
 int /*<<< orphan*/ * esas2r_buffered_ioctl ; 
 int /*<<< orphan*/  esas2r_buffered_ioctl_addr ; 
 TYPE_4__* esas2r_buffered_ioctl_pcid ; 
 scalar_t__ esas2r_buffered_ioctl_size ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC16(int i)
{
	struct esas2r_adapter *a = esas2r_adapters[i];

	if (a) {
		unsigned long flags;
		struct workqueue_struct *wq;
		FUNC4("killing adapter %p [%d] ", a, i);
		FUNC5(a);
		FUNC3(a, 0);
		if (esas2r_buffered_ioctl &&
		    (a->pcid == esas2r_buffered_ioctl_pcid)) {
			FUNC2(&a->pcid->dev,
					  (size_t)esas2r_buffered_ioctl_size,
					  esas2r_buffered_ioctl,
					  esas2r_buffered_ioctl_addr);
			esas2r_buffered_ioctl = NULL;
		}

		if (a->vda_buffer) {
			FUNC2(&a->pcid->dev,
					  (size_t)VDA_MAX_BUFFER_SIZE,
					  a->vda_buffer,
					  (dma_addr_t)a->ppvda_buffer);
			a->vda_buffer = NULL;
		}
		if (a->fs_api_buffer) {
			FUNC2(&a->pcid->dev,
					  (size_t)a->fs_api_buffer_size,
					  a->fs_api_buffer,
					  (dma_addr_t)a->ppfs_api_buffer);
			a->fs_api_buffer = NULL;
		}

		FUNC7(a->local_atto_ioctl);
		a->local_atto_ioctl = NULL;

		FUNC13(&a->fw_event_lock, flags);
		wq = a->fw_event_q;
		a->fw_event_q = NULL;
		FUNC14(&a->fw_event_lock, flags);
		if (wq)
			FUNC1(wq);

		if (a->uncached) {
			FUNC2(&a->pcid->dev,
					  (size_t)a->uncached_size,
					  a->uncached,
					  (dma_addr_t)a->uncached_phys);
			a->uncached = NULL;
			FUNC4("uncached area freed");
		}

		FUNC6(ESAS2R_LOG_INFO,
			       &(a->pcid->dev),
			       "pci_disable_device() called.  msix_enabled: %d "
			       "msi_enabled: %d irq: %d pin: %d",
			       a->pcid->msix_enabled,
			       a->pcid->msi_enabled,
			       a->pcid->irq,
			       a->pcid->pin);

		FUNC6(ESAS2R_LOG_INFO,
			       &(a->pcid->dev),
			       "before pci_disable_device() enable_cnt: %d",
			       a->pcid->enable_cnt.counter);

		FUNC8(a->pcid);
		FUNC6(ESAS2R_LOG_INFO,
			       &(a->pcid->dev),
			       "after pci_disable_device() enable_cnt: %d",
			       a->pcid->enable_cnt.counter);

		FUNC6(ESAS2R_LOG_INFO,
			       &(a->pcid->dev),
			       "pci_set_drv_data(%p, NULL) called",
			       a->pcid);

		FUNC9(a->pcid, NULL);
		esas2r_adapters[i] = NULL;

		if (FUNC15(AF2_INIT_DONE, &a->flags2)) {
			FUNC0(AF2_INIT_DONE, &a->flags2);

			FUNC12(AF_DEGRADED_MODE, &a->flags);

			FUNC6(ESAS2R_LOG_INFO,
				       &(a->host->shost_gendev),
				       "scsi_remove_host() called");

			FUNC11(a->host);

			FUNC6(ESAS2R_LOG_INFO,
				       &(a->host->shost_gendev),
				       "scsi_host_put() called");

			FUNC10(a->host);
		}
	}
}