#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct whc_qset {int dummy; } ;
struct whc {int n_devices; void* di_buf; int /*<<< orphan*/  di_buf_dma; TYPE_2__* umc; void* dn_buf; int /*<<< orphan*/  dn_buf_dma; int /*<<< orphan*/ * gen_cmd_buf; int /*<<< orphan*/  gen_cmd_buf_dma; int /*<<< orphan*/ * qset_pool; int /*<<< orphan*/  n_mmc_ies; int /*<<< orphan*/  n_keys; scalar_t__ base; scalar_t__ base_phys; int /*<<< orphan*/  periodic_removed_list; int /*<<< orphan*/ * periodic_list; int /*<<< orphan*/  periodic_work; int /*<<< orphan*/  async_removed_list; int /*<<< orphan*/  async_list; int /*<<< orphan*/  async_work; int /*<<< orphan*/  dn_work; int /*<<< orphan*/ * workqueue; int /*<<< orphan*/  periodic_list_wq; int /*<<< orphan*/  async_list_wq; int /*<<< orphan*/  cmd_wq; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct dn_buf_entry {int dummy; } ;
struct di_buf_entry {int dummy; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_3__ {scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__ resource; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ WHCSPARAMS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int WHC_GEN_CMD_DATA_LEN ; 
 int WHC_N_DN_ENTRIES ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct whc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct whc*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  scan_async_work ; 
 int /*<<< orphan*/  scan_periodic_work ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct whc*) ; 
 int /*<<< orphan*/  whc_dn_work ; 
 int /*<<< orphan*/  FUNC20 (struct whc*) ; 
 int /*<<< orphan*/  FUNC21 (struct whc*) ; 
 int /*<<< orphan*/  FUNC22 (struct whc*) ; 

int FUNC23(struct whc *whc)
{
	u32 whcsparams;
	int ret, i;
	resource_size_t start, len;

	FUNC18(&whc->lock);
	FUNC15(&whc->mutex);
	FUNC12(&whc->cmd_wq);
	FUNC12(&whc->async_list_wq);
	FUNC12(&whc->periodic_list_wq);
	whc->workqueue = FUNC5(FUNC9(&whc->umc->dev), 0);
	if (whc->workqueue == NULL) {
		ret = -ENOMEM;
		goto error;
	}
	FUNC1(&whc->dn_work, whc_dn_work);

	FUNC1(&whc->async_work, scan_async_work);
	FUNC0(&whc->async_list);
	FUNC0(&whc->async_removed_list);

	FUNC1(&whc->periodic_work, scan_periodic_work);
	for (i = 0; i < 5; i++)
		FUNC0(&whc->periodic_list[i]);
	FUNC0(&whc->periodic_removed_list);

	/* Map HC registers. */
	start = whc->umc->resource.start;
	len   = whc->umc->resource.end - start + 1;
	if (!FUNC17(start, len, "whci-hc")) {
		FUNC8(&whc->umc->dev, "can't request HC region\n");
		ret = -EBUSY;
		goto error;
	}
	whc->base_phys = start;
	whc->base = FUNC13(start, len);
	if (!whc->base) {
		FUNC8(&whc->umc->dev, "ioremap\n");
		ret = -ENOMEM;
		goto error;
	}

	FUNC22(whc);

	/* Read maximum number of devices, keys and MMC IEs. */
	whcsparams = FUNC14(whc->base + WHCSPARAMS);
	whc->n_devices = FUNC2(whcsparams);
	whc->n_keys    = FUNC3(whcsparams);
	whc->n_mmc_ies = FUNC4(whcsparams);

	FUNC7(&whc->umc->dev, "N_DEVICES = %d, N_KEYS = %d, N_MMC_IES = %d\n",
		whc->n_devices, whc->n_keys, whc->n_mmc_ies);

	whc->qset_pool = FUNC11("qset", &whc->umc->dev,
					 sizeof(struct whc_qset), 64, 0);
	if (whc->qset_pool == NULL) {
		ret = -ENOMEM;
		goto error;
	}

	ret = FUNC6(whc);
	if (ret < 0)
		goto error;
	ret = FUNC16(whc);
	if (ret < 0)
		goto error;

	/* Allocate and initialize a buffer for generic commands, the
	   Device Information buffer, and the Device Notification
	   buffer. */

	whc->gen_cmd_buf = FUNC10(&whc->umc->dev, WHC_GEN_CMD_DATA_LEN,
					      &whc->gen_cmd_buf_dma, GFP_KERNEL);
	if (whc->gen_cmd_buf == NULL) {
		ret = -ENOMEM;
		goto error;
	}

	whc->dn_buf = FUNC10(&whc->umc->dev,
					 sizeof(struct dn_buf_entry) * WHC_N_DN_ENTRIES,
					 &whc->dn_buf_dma, GFP_KERNEL);
	if (!whc->dn_buf) {
		ret = -ENOMEM;
		goto error;
	}
	FUNC21(whc);

	whc->di_buf = FUNC10(&whc->umc->dev,
					 sizeof(struct di_buf_entry) * whc->n_devices,
					 &whc->di_buf_dma, GFP_KERNEL);
	if (!whc->di_buf) {
		ret = -ENOMEM;
		goto error;
	}
	FUNC20(whc);

	return 0;

error:
	FUNC19(whc);
	return ret;
}