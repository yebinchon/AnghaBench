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
struct xenstore_domain_interface {scalar_t__ rsp_cons; scalar_t__ rsp_prod; int /*<<< orphan*/  rsp; } ;
typedef  scalar_t__ XENSTORE_RING_IDX ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ XENSTORE_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 char* FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  xen_store_evtchn ; 
 struct xenstore_domain_interface* xen_store_interface ; 

__attribute__((used)) static int FUNC6(void *data, unsigned int len)
{
	struct xenstore_domain_interface *intf = xen_store_interface;
	XENSTORE_RING_IDX cons, prod;
	unsigned int bytes = 0;

	while (len != 0) {
		unsigned int avail;
		const char *src;

		/* Read indexes, then verify. */
		cons = intf->rsp_cons;
		prod = intf->rsp_prod;
		if (cons == prod)
			return bytes;

		if (!FUNC0(cons, prod)) {
			intf->rsp_cons = intf->rsp_prod = 0;
			return -EIO;
		}

		src = FUNC1(cons, prod, intf->rsp, &avail);
		if (avail == 0)
			continue;
		if (avail > len)
			avail = len;

		/* Must read data /after/ reading the producer index. */
		FUNC5();

		FUNC2(data, src, avail);
		data += avail;
		len -= avail;
		bytes += avail;

		/* Other side must not see free space until we've copied out */
		FUNC4();
		intf->rsp_cons += avail;

		/* Implies mb(): other side will see the updated consumer. */
		if (intf->rsp_prod - cons >= XENSTORE_RING_SIZE)
			FUNC3(xen_store_evtchn);
	}

	return bytes;
}