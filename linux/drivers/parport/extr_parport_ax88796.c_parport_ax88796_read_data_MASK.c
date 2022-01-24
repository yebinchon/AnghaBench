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
struct ax_drvdata {int /*<<< orphan*/  spp_data; } ;

/* Variables and functions */
 struct ax_drvdata* FUNC0 (struct parport*) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char
FUNC2(struct parport *p)
{
	struct ax_drvdata *dd = FUNC0(p);

	return FUNC1(dd->spp_data);
}