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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  phys; scalar_t__ orig_len; } ;
struct esas2r_adapter {TYPE_2__ firmware; TYPE_1__* pcid; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 

__attribute__((used)) static int FUNC3(struct esas2r_adapter *a, u32 length)
{
	FUNC2(a);

	a->firmware.orig_len = length;

	a->firmware.data = (u8 *)FUNC0(&a->pcid->dev,
						    (size_t)length,
						    (dma_addr_t *)&a->firmware.
						    phys,
						    GFP_KERNEL);

	if (!a->firmware.data) {
		FUNC1("buffer alloc failed!");
		return 0;
	}

	return 1;
}