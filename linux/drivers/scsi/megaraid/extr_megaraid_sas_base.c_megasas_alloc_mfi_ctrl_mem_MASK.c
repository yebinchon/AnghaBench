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
typedef  int /*<<< orphan*/  u32 ;
struct megasas_instance {scalar_t__* consumer; scalar_t__* producer; TYPE_1__* pdev; int /*<<< orphan*/  consumer_h; int /*<<< orphan*/  producer_h; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct megasas_instance *instance)
{
	instance->producer = FUNC1(&instance->pdev->dev,
			sizeof(u32), &instance->producer_h, GFP_KERNEL);
	instance->consumer = FUNC1(&instance->pdev->dev,
			sizeof(u32), &instance->consumer_h, GFP_KERNEL);

	if (!instance->producer || !instance->consumer) {
		FUNC0(&instance->pdev->dev,
			"Failed to allocate memory for producer, consumer\n");
		return -1;
	}

	*instance->producer = 0;
	*instance->consumer = 0;
	return 0;
}