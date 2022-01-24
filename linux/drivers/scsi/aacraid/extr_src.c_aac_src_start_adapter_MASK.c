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
struct TYPE_4__ {void* host_elapsed_seconds; } ;
struct TYPE_3__ {void* host_elapsed_seconds; } ;
union aac_init {TYPE_2__ r7; TYPE_1__ r8; } ;
typedef  scalar_t__ ulong ;
typedef  int /*<<< orphan*/  u32 ;
struct aac_dev {int max_msix; int* host_rrq_idx; int vector_cap; scalar_t__ comm_interface; scalar_t__ init_pa; union aac_init* init; scalar_t__ fibs_pushed_no; int /*<<< orphan*/  msix_counter; int /*<<< orphan*/ * rrq_outstanding; } ;
struct _rrq {int dummy; } ;
struct _r8 {int dummy; } ;

/* Variables and functions */
 scalar_t__ AAC_COMM_MESSAGE_TYPE3 ; 
 int AAC_MAX_HRRQ ; 
 int /*<<< orphan*/  INIT_STRUCT_BASE_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct aac_dev *dev)
{
	union aac_init *init;
	int i;

	 /* reset host_rrq_idx first */
	for (i = 0; i < dev->max_msix; i++) {
		dev->host_rrq_idx[i] = i * dev->vector_cap;
		FUNC0(&dev->rrq_outstanding[i], 0);
	}
	FUNC0(&dev->msix_counter, 0);
	dev->fibs_pushed_no = 0;

	init = dev->init;
	if (dev->comm_interface == AAC_COMM_MESSAGE_TYPE3) {
		init->r8.host_elapsed_seconds =
			FUNC1(FUNC2());
		FUNC4(dev, INIT_STRUCT_BASE_ADDRESS,
			FUNC3(dev->init_pa),
			FUNC5(dev->init_pa),
			sizeof(struct _r8) +
			(AAC_MAX_HRRQ - 1) * sizeof(struct _rrq),
			0, 0, 0, NULL, NULL, NULL, NULL, NULL);
	} else {
		init->r7.host_elapsed_seconds =
			FUNC1(FUNC2());
		// We can only use a 32 bit address here
		FUNC4(dev, INIT_STRUCT_BASE_ADDRESS,
			(u32)(ulong)dev->init_pa, 0, 0, 0, 0, 0,
			NULL, NULL, NULL, NULL, NULL);
	}

}