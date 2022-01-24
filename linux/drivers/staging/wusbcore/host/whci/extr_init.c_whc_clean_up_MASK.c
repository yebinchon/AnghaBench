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
struct whc {int n_devices; scalar_t__ workqueue; scalar_t__ base_phys; scalar_t__ base; TYPE_1__* umc; int /*<<< orphan*/  qset_pool; int /*<<< orphan*/  gen_cmd_buf_dma; scalar_t__ gen_cmd_buf; int /*<<< orphan*/  dn_buf_dma; scalar_t__ dn_buf; int /*<<< orphan*/  di_buf_dma; scalar_t__ di_buf; } ;
struct dn_buf_entry {int dummy; } ;
struct di_buf_entry {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  resource; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int WHC_GEN_CMD_DATA_LEN ; 
 int WHC_N_DN_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct whc*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct whc*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct whc *whc)
{
	resource_size_t len;

	if (whc->di_buf)
		FUNC2(&whc->umc->dev, sizeof(struct di_buf_entry) * whc->n_devices,
				  whc->di_buf, whc->di_buf_dma);
	if (whc->dn_buf)
		FUNC2(&whc->umc->dev, sizeof(struct dn_buf_entry) * WHC_N_DN_ENTRIES,
				  whc->dn_buf, whc->dn_buf_dma);
	if (whc->gen_cmd_buf)
		FUNC2(&whc->umc->dev, WHC_GEN_CMD_DATA_LEN,
				  whc->gen_cmd_buf, whc->gen_cmd_buf_dma);

	FUNC5(whc);
	FUNC0(whc);

	FUNC3(whc->qset_pool);

	len   = FUNC7(&whc->umc->resource);
	if (whc->base)
		FUNC4(whc->base);
	if (whc->base_phys)
		FUNC6(whc->base_phys, len);

	if (whc->workqueue)
		FUNC1(whc->workqueue);
}