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
typedef  void* u16 ;
struct qedi_portid_tbl {int /*<<< orphan*/  table; int /*<<< orphan*/  lock; void* next; void* max; void* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct qedi_portid_tbl *id_tbl, u16 size,
			    u16 start_id, u16 next)
{
	id_tbl->start = start_id;
	id_tbl->max = size;
	id_tbl->next = next;
	FUNC2(&id_tbl->lock);
	id_tbl->table = FUNC1(FUNC0(size), sizeof(long), GFP_KERNEL);
	if (!id_tbl->table)
		return -ENOMEM;

	return 0;
}