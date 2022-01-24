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
typedef  int /*<<< orphan*/  u32 ;
struct smem_ptable {size_t num_entries; int /*<<< orphan*/ * entry; } ;
struct smem_info {int /*<<< orphan*/  num_items; int /*<<< orphan*/  magic; } ;
struct qcom_smem {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct smem_ptable*) ; 
 int /*<<< orphan*/  SMEM_INFO_MAGIC ; 
 int /*<<< orphan*/  SMEM_ITEM_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct smem_ptable* FUNC3 (struct qcom_smem*) ; 

__attribute__((used)) static u32 FUNC4(struct qcom_smem *smem)
{
	struct smem_ptable *ptable;
	struct smem_info *info;

	ptable = FUNC3(smem);
	if (FUNC0(ptable))
		return SMEM_ITEM_COUNT;

	info = (struct smem_info *)&ptable->entry[ptable->num_entries];
	if (FUNC2(info->magic, SMEM_INFO_MAGIC, sizeof(info->magic)))
		return SMEM_ITEM_COUNT;

	return FUNC1(info->num_items);
}