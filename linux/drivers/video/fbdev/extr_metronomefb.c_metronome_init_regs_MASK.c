#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct metronomefb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* setup_io ) (struct metronomefb_par*) ;} ;

/* Variables and functions */
 int FUNC0 (struct metronomefb_par*) ; 
 int FUNC1 (struct metronomefb_par*) ; 
 int FUNC2 (struct metronomefb_par*) ; 
 int FUNC3 (struct metronomefb_par*) ; 

__attribute__((used)) static int FUNC4(struct metronomefb_par *par)
{
	int res;

	res = par->board->setup_io(par);
	if (res)
		return res;

	res = FUNC2(par);
	if (res)
		return res;

	res = FUNC0(par);
	if (res)
		return res;

	res = FUNC1(par);

	return res;
}