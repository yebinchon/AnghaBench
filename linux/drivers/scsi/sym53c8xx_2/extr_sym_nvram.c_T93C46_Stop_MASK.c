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
typedef  int u_char ;
struct sym_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sym_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_device*,int*) ; 
 int /*<<< orphan*/  nc_gpreg ; 
 int /*<<< orphan*/  nc_mbox1 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct sym_device *np, u_char *gpreg)
{
	*gpreg &= 0xef;
	FUNC1(np, nc_gpreg, *gpreg);
	FUNC0(np, nc_mbox1);
	FUNC3(2);

	FUNC2(np, gpreg);
}