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
struct parport {int dummy; } ;
struct ax_drvdata {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char,unsigned char) ; 
 unsigned char FUNC1 (struct parport*) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,unsigned char) ; 
 struct ax_drvdata* FUNC3 (struct parport*) ; 

__attribute__((used)) static unsigned char
FUNC4(struct parport *p, unsigned char mask,
			     unsigned char val)
{
	struct ax_drvdata *dd = FUNC3(p);
	unsigned char old = FUNC1(p);

	FUNC0(dd->dev, "frob: mask=%02x, val=%02x, old=%02x\n",
		mask, val, old);

	FUNC2(p, (old & ~mask) | val);
	return old;
}