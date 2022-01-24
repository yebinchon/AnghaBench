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
struct unmap_refs_callback_data {int result; int /*<<< orphan*/  completion; } ;
struct gntab_unmap_queue_data {int /*<<< orphan*/ * done; struct unmap_refs_callback_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gntab_unmap_queue_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unmap_refs_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct gntab_unmap_queue_data *item)
{
	struct unmap_refs_callback_data data;

	FUNC1(&data.completion);
	item->data = &data;
	item->done = &unmap_refs_callback;
	FUNC0(item);
	FUNC2(&data.completion);

	return data.result;
}