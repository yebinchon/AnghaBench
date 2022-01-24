#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {unsigned int major_id; unsigned int pack_id; unsigned int pack_mask; char const* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* soc_packages ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC3(u32 socinfo)
{
	unsigned int pack = FUNC2(socinfo);
	unsigned int major = FUNC1(socinfo);
	int i;

	for (i = 0 ; i < FUNC0(soc_packages) ; ++i) {
		if (soc_packages[i].major_id == major &&
		    soc_packages[i].pack_id ==
				(pack & soc_packages[i].pack_mask))
			return soc_packages[i].name;
	}

	return "Unknown";
}