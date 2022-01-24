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
struct resource {unsigned char flags; } ;
struct pnp_dev {int dummy; } ;

/* Variables and functions */
 unsigned char IORESOURCE_BITS ; 
 struct resource* FUNC0 (struct pnp_dev*,unsigned long,unsigned int) ; 

__attribute__((used)) static struct resource *FUNC1(struct pnp_dev *dev,
					  unsigned char rule,
					  unsigned long type,
					  unsigned int bar)
{
	struct resource *res = FUNC0(dev, type, bar);

	/* when the resource already exists, set its resource bits from rule */
	if (res) {
		res->flags &= ~IORESOURCE_BITS;
		res->flags |= rule & IORESOURCE_BITS;
	}

	return res;
}