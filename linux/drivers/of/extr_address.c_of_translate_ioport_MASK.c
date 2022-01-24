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
typedef  unsigned long u64 ;
struct device_node {int /*<<< orphan*/  fwnode; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned long OF_BAD_ADDR ; 
 unsigned long FUNC0 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,char*,struct device_node**) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  of_get_parent ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 unsigned long FUNC3 (unsigned long) ; 

__attribute__((used)) static u64 FUNC4(struct device_node *dev, const __be32 *in_addr,
			u64 size)
{
	u64 taddr;
	unsigned long port;
	struct device_node *host;

	taddr = FUNC0(dev, of_get_parent,
				       in_addr, "ranges", &host);
	if (host) {
		/* host-specific port access */
		port = FUNC1(&host->fwnode, taddr, size);
		FUNC2(host);
	} else {
		/* memory-mapped I/O range */
		port = FUNC3(taddr);
	}

	if (port == (unsigned long)-1)
		return OF_BAD_ADDR;

	return port;
}