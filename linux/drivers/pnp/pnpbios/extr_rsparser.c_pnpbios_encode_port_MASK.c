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
struct resource {unsigned long start; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (struct resource*) ; 
 unsigned long FUNC2 (struct resource*) ; 

__attribute__((used)) static void FUNC3(struct pnp_dev *dev, unsigned char *p,
				struct resource *res)
{
	unsigned long base;
	unsigned long len;

	if (FUNC1(res)) {
		base = res->start;
		len = FUNC2(res);
	} else {
		base = 0;
		len = 0;
	}

	p[2] = base & 0xff;
	p[3] = (base >> 8) & 0xff;
	p[4] = base & 0xff;
	p[5] = (base >> 8) & 0xff;
	p[7] = len & 0xff;

	FUNC0(&dev->dev, "  encode io %#lx-%#lx\n", base, base + len - 1);
}