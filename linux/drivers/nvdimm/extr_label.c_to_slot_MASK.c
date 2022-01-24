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
struct nd_namespace_label {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvdimm_drvdata*) ; 
 unsigned long FUNC1 (struct nvdimm_drvdata*) ; 

__attribute__((used)) static int FUNC2(struct nvdimm_drvdata *ndd,
		struct nd_namespace_label *nd_label)
{
	unsigned long label, base;

	label = (unsigned long) nd_label;
	base = (unsigned long) FUNC0(ndd);

	return (label - base) / FUNC1(ndd);
}