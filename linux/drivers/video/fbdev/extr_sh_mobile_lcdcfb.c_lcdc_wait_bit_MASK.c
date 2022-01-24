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
struct sh_mobile_lcdc_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (struct sh_mobile_lcdc_priv*,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct sh_mobile_lcdc_priv *priv,
			  unsigned long reg_offs,
			  unsigned long mask, unsigned long until)
{
	while ((FUNC1(priv, reg_offs) & mask) != until)
		FUNC0();
}