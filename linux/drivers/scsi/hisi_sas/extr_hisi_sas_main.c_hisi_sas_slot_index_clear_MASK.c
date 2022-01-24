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
struct hisi_hba {void* slot_index_tags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,void*) ; 

__attribute__((used)) static void FUNC1(struct hisi_hba *hisi_hba, int slot_idx)
{
	void *bitmap = hisi_hba->slot_index_tags;

	FUNC0(slot_idx, bitmap);
}