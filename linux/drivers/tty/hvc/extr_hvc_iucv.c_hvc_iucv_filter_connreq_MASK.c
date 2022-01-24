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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FILTER_WILDCARD_CHAR ; 
 char* hvc_iucv_filter ; 
 size_t hvc_iucv_filter_size ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 char* FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(u8 ipvmid[8])
{
	const char *wildcard, *filter_entry;
	size_t i, len;

	/* Note: default policy is ACCEPT if no filter is set */
	if (!hvc_iucv_filter_size)
		return 0;

	for (i = 0; i < hvc_iucv_filter_size; i++) {
		filter_entry = hvc_iucv_filter + (8 * i);

		/* If a filter entry contains the filter wildcard character,
		 * reduce the length to match the leading portion of the user
		 * ID only (wildcard match).  Characters following the wildcard
		 * are ignored.
		 */
		wildcard = FUNC1(filter_entry, 8, FILTER_WILDCARD_CHAR);
		len = (wildcard) ? wildcard - filter_entry : 8;
		if (0 == FUNC0(ipvmid, filter_entry, len))
			return 0;
	}
	return 1;
}