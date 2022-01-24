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
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct broadsheetfb_par*,int,int) ; 

__attribute__((used)) static int FUNC1(struct broadsheetfb_par *par)
{

	FUNC0(par, 0x0204, ((3 << 3) | 1));
	FUNC0(par, 0x0208, 0x0001);

	return 0;
}