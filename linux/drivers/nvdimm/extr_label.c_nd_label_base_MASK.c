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
struct nvdimm_drvdata {int dummy; } ;
typedef  void nd_namespace_label ;

/* Variables and functions */
 int FUNC0 (struct nvdimm_drvdata*) ; 
 void* FUNC1 (struct nvdimm_drvdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nd_namespace_label *FUNC2(struct nvdimm_drvdata *ndd)
{
	void *base = FUNC1(ndd, 0);

	return base + 2 * FUNC0(ndd);
}