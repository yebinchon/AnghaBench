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
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vga_rolled_over ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*) ; 
 scalar_t__ vga_vram_base ; 
 int /*<<< orphan*/  vga_vram_size ; 

__attribute__((used)) static void FUNC2(struct vc_data *c, int lines)
{
	FUNC0(c, lines, vga_rolled_over, (void *)vga_vram_base,
			vga_vram_size);
	FUNC1(c);
}