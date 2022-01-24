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
typedef  int /*<<< orphan*/  u_int ;
struct atyfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_DATA ; 
 int /*<<< orphan*/  DAC_W_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct atyfb_par const*) ; 

__attribute__((used)) static void FUNC1(u_int regno, u_int red, u_int green, u_int blue,
		       const struct atyfb_par *par)
{
	FUNC0(DAC_W_INDEX, regno, par);
	FUNC0(DAC_DATA, red, par);
	FUNC0(DAC_DATA, green, par);
	FUNC0(DAC_DATA, blue, par);
}