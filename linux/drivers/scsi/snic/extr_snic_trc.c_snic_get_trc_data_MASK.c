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
struct snic_trc_data {scalar_t__ ts; } ;
struct snic_trc {size_t rd_idx; size_t wr_idx; size_t max_idx; int /*<<< orphan*/  lock; struct snic_trc_data* buf; } ;
struct TYPE_2__ {struct snic_trc trc; } ;

/* Variables and functions */
 int FUNC0 (struct snic_trc_data*,char*,int) ; 
 TYPE_1__* snic_glob ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC3(char *buf, int buf_sz)
{
	struct snic_trc_data *td = NULL;
	struct snic_trc *trc = &snic_glob->trc;
	unsigned long flags;

	FUNC1(&trc->lock, flags);
	if (trc->rd_idx == trc->wr_idx) {
		FUNC2(&trc->lock, flags);

		return -1;
	}
	td = &trc->buf[trc->rd_idx];

	if (td->ts == 0) {
		/* write in progress. */
		FUNC2(&trc->lock, flags);

		return -1;
	}

	trc->rd_idx++;
	if (trc->rd_idx == trc->max_idx)
		trc->rd_idx = 0;
	FUNC2(&trc->lock, flags);

	return FUNC0(td, buf, buf_sz);
}