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
typedef  int u8 ;
typedef  int u16 ;
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct broadsheetfb_par*,int) ; 
 int FUNC1 (struct broadsheetfb_par*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct broadsheetfb_par*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct broadsheetfb_par *par, u8 *data)
{
	int err;
	u16 tmp;

	FUNC2(par, 0x0202, 0);

	err = FUNC1(par, 0x0206, 3, 0, 100);
	if (err)
		return err;

	tmp = FUNC0(par, 0x200);

	*data = tmp & 0xFF;

	return 0;
}