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
struct nvdimm {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDD_SECURITY_OVERWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct nvdimm *nvdimm)
{
	return FUNC0(NDD_SECURITY_OVERWRITE, &nvdimm->flags);
}