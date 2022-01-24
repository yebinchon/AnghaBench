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
struct TYPE_2__ {int lsi_mask; int /*<<< orphan*/  isc; int /*<<< orphan*/  lsi_ptr; int /*<<< orphan*/  handler; } ;
struct airq_info {int summary_indicator_idx; int /*<<< orphan*/  aiv; TYPE_1__ airq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int AIRQ_IV_ALLOC ; 
 int AIRQ_IV_CACHELINE ; 
 int AIRQ_IV_PTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VIRTIO_AIRQ_ISC ; 
 int /*<<< orphan*/  VIRTIO_IV_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct airq_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct airq_info*) ; 
 struct airq_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  virtio_airq_handler ; 

__attribute__((used)) static struct airq_info *FUNC7(int index)
{
	struct airq_info *info;
	int rc;

	info = FUNC4(sizeof(*info), GFP_KERNEL);
	if (!info)
		return NULL;
	FUNC6(&info->lock);
	info->aiv = FUNC0(VIRTIO_IV_BITS, AIRQ_IV_ALLOC | AIRQ_IV_PTR
				   | AIRQ_IV_CACHELINE);
	if (!info->aiv) {
		FUNC3(info);
		return NULL;
	}
	info->airq.handler = virtio_airq_handler;
	info->summary_indicator_idx = index;
	info->airq.lsi_ptr = FUNC2(info);
	info->airq.lsi_mask = 0xff;
	info->airq.isc = VIRTIO_AIRQ_ISC;
	rc = FUNC5(&info->airq);
	if (rc) {
		FUNC1(info->aiv);
		FUNC3(info);
		return NULL;
	}
	return info;
}