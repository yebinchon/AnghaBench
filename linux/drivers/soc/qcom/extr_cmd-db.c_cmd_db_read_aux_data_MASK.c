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
struct rsc_hdr {int dummy; } ;
struct entry_header {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 void const* FUNC0 (int) ; 
 int FUNC1 (char const*,struct entry_header const**,struct rsc_hdr const**) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 void const* FUNC3 (struct rsc_hdr const*,struct entry_header const*) ; 

const void *FUNC4(const char *id, size_t *len)
{
	int ret;
	const struct entry_header *ent;
	const struct rsc_hdr *rsc_hdr;

	ret = FUNC1(id, &ent, &rsc_hdr);
	if (ret)
		return FUNC0(ret);

	if (len)
		*len = FUNC2(ent->len);

	return FUNC3(rsc_hdr, ent);
}