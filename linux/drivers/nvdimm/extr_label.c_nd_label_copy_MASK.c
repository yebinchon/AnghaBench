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
struct nd_namespace_index {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nd_namespace_index*,struct nd_namespace_index*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvdimm_drvdata*) ; 

__attribute__((used)) static void FUNC2(struct nvdimm_drvdata *ndd,
			  struct nd_namespace_index *dst,
			  struct nd_namespace_index *src)
{
	/* just exit if either destination or source is NULL */
	if (!dst || !src)
		return;

	FUNC0(dst, src, FUNC1(ndd));
}