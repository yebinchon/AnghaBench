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
struct most_interface {int dummy; } ;
struct mbo {scalar_t__ bus_address; int /*<<< orphan*/  list; } ;
struct hdm_channel {int /*<<< orphan*/  pending_list; int /*<<< orphan*/  is_initialized; } ;
struct dim2_hdm {struct hdm_channel* hch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_CHANNELS ; 
 int EFAULT ; 
 int EPERM ; 
 int /*<<< orphan*/  dim_lock ; 
 struct dim2_hdm* FUNC1 (struct most_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct hdm_channel*) ; 

__attribute__((used)) static int FUNC6(struct most_interface *most_iface, int ch_idx,
		   struct mbo *mbo)
{
	struct dim2_hdm *dev = FUNC1(most_iface);
	struct hdm_channel *hdm_ch = dev->hch + ch_idx;
	unsigned long flags;

	FUNC0(ch_idx < 0 || ch_idx >= DMA_CHANNELS);

	if (!hdm_ch->is_initialized)
		return -EPERM;

	if (mbo->bus_address == 0)
		return -EFAULT;

	FUNC3(&dim_lock, flags);
	FUNC2(&mbo->list, &hdm_ch->pending_list);
	FUNC4(&dim_lock, flags);

	(void)FUNC5(hdm_ch);

	return 0;
}