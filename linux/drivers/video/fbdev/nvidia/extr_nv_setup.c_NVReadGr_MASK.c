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
typedef  int /*<<< orphan*/  u8 ;
struct nvidia_par {int /*<<< orphan*/  PVIO; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_GFX_D ; 
 int /*<<< orphan*/  VGA_GFX_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u8 FUNC2(struct nvidia_par *par, u8 index)
{
	FUNC1(par->PVIO, VGA_GFX_I, index);
	return (FUNC0(par->PVIO, VGA_GFX_D));
}