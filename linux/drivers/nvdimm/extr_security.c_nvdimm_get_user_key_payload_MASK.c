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
struct nvdimm {int dummy; } ;
struct key {int dummy; } ;
typedef  scalar_t__ key_serial_t ;

/* Variables and functions */
 int NVDIMM_BASE_KEY ; 
 void const* FUNC0 (struct key*) ; 
 struct key* FUNC1 (struct nvdimm*,scalar_t__,int) ; 
 void const* zero_key ; 

__attribute__((used)) static const void *FUNC2(struct nvdimm *nvdimm,
		key_serial_t id, int subclass, struct key **key)
{
	*key = NULL;
	if (id == 0) {
		if (subclass == NVDIMM_BASE_KEY)
			return zero_key;
		else
			return NULL;
	}

	*key = FUNC1(nvdimm, id, subclass);
	if (!*key)
		return NULL;

	return FUNC0(*key);
}