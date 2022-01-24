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
typedef  int u32 ;
struct smem_ptable {int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
struct qcom_smem {int /*<<< orphan*/  dev; TYPE_1__* regions; } ;
struct TYPE_2__ {int size; int /*<<< orphan*/  virt_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct smem_ptable* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMEM_PTABLE_MAGIC ; 
 int /*<<< orphan*/  SZ_4K ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct smem_ptable *FUNC4(struct qcom_smem *smem)
{
	struct smem_ptable *ptable;
	u32 version;

	ptable = smem->regions[0].virt_base + smem->regions[0].size - SZ_4K;
	if (FUNC3(ptable->magic, SMEM_PTABLE_MAGIC, sizeof(ptable->magic)))
		return FUNC0(-ENOENT);

	version = FUNC2(ptable->version);
	if (version != 1) {
		FUNC1(smem->dev,
			"Unsupported partition header version %d\n", version);
		return FUNC0(-EINVAL);
	}
	return ptable;
}