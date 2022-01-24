#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct most_interface {int dummy; } ;
struct hdm_channel {int is_initialized; scalar_t__* reset_dbr_size; int /*<<< orphan*/  pending_list; int /*<<< orphan*/  started_list; int /*<<< orphan*/  name; int /*<<< orphan*/  ch; } ;
struct dim2_hdm {int atx_idx; struct hdm_channel* hch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DIM_NO_ERROR ; 
 int DMA_CHANNELS ; 
 int EFAULT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dim2_tasklet ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dim_lock ; 
 struct dim2_hdm* FUNC3 (struct most_interface*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct most_interface *most_iface, int ch_idx)
{
	struct dim2_hdm *dev = FUNC3(most_iface);
	struct hdm_channel *hdm_ch = dev->hch + ch_idx;
	unsigned long flags;
	u8 hal_ret;
	int ret = 0;

	FUNC0(ch_idx < 0 || ch_idx >= DMA_CHANNELS);

	if (!hdm_ch->is_initialized)
		return -EPERM;

	FUNC7(&dim2_tasklet);
	FUNC5(&dim_lock, flags);
	hal_ret = FUNC2(&hdm_ch->ch);
	hdm_ch->is_initialized = false;
	if (ch_idx == dev->atx_idx)
		dev->atx_idx = -1;
	FUNC6(&dim_lock, flags);
	FUNC8(&dim2_tasklet);
	if (hal_ret != DIM_NO_ERROR) {
		FUNC4("HAL Failed to close channel %s\n", hdm_ch->name);
		ret = -EFAULT;
	}

	FUNC1(&hdm_ch->started_list);
	FUNC1(&hdm_ch->pending_list);
	if (hdm_ch->reset_dbr_size)
		*hdm_ch->reset_dbr_size = 0;

	return ret;
}