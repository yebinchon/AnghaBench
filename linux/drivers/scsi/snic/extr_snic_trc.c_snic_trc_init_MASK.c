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
struct snic_trc_data {int dummy; } ;
struct snic_trc {int max_idx; int enable; scalar_t__ wr_idx; scalar_t__ rd_idx; int /*<<< orphan*/  lock; struct snic_trc_data* buf; } ;
struct TYPE_2__ {struct snic_trc trc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int SNIC_TRC_ENTRY_SZ ; 
 TYPE_1__* snic_glob ; 
 int snic_trace_max_pages ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 

int
FUNC5(void)
{
	struct snic_trc *trc = &snic_glob->trc;
	void *tbuf = NULL;
	int tbuf_sz = 0, ret;

	tbuf_sz = (snic_trace_max_pages * PAGE_SIZE);
	tbuf = FUNC4(tbuf_sz);
	if (!tbuf) {
		FUNC0("Failed to Allocate Trace Buffer Size. %d\n", tbuf_sz);
		FUNC0("Trace Facility not enabled.\n");
		ret = -ENOMEM;

		return ret;
	}

	trc->buf = (struct snic_trc_data *) tbuf;
	FUNC3(&trc->lock);

	FUNC2();

	trc->max_idx = (tbuf_sz / SNIC_TRC_ENTRY_SZ);
	trc->rd_idx = trc->wr_idx = 0;
	trc->enable = true;
	FUNC1("Trace Facility Enabled.\n Trace Buffer SZ %lu Pages.\n",
		  tbuf_sz / PAGE_SIZE);
	ret = 0;

	return ret;
}