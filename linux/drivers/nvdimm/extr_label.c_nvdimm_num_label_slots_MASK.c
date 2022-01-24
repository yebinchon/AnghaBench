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
struct TYPE_2__ {int config_size; } ;
struct nvdimm_drvdata {TYPE_1__ nsarea; } ;

/* Variables and functions */
 int NSINDEX_ALIGN ; 
 int FUNC0 (struct nvdimm_drvdata*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct nvdimm_drvdata*) ; 

int FUNC3(struct nvdimm_drvdata *ndd)
{
	u32 tmp_nslot, n;

	tmp_nslot = ndd->nsarea.config_size / FUNC2(ndd);
	n = FUNC1(tmp_nslot) / NSINDEX_ALIGN;

	return FUNC0(ndd, NSINDEX_ALIGN * n);
}