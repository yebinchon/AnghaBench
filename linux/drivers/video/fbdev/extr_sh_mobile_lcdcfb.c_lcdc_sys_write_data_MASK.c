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
struct sh_mobile_lcdc_chan {int /*<<< orphan*/  lcdc; } ;

/* Variables and functions */
 int LDDWAR_WA ; 
 unsigned long LDDWDxR_RSW ; 
 unsigned long LDDWDxR_WDACT ; 
 int /*<<< orphan*/  LDSR_AS ; 
 int /*<<< orphan*/  _LDDWAR ; 
 int /*<<< orphan*/  _LDDWD0R ; 
 int /*<<< orphan*/  _LDSR ; 
 scalar_t__ FUNC0 (struct sh_mobile_lcdc_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *handle, unsigned long data)
{
	struct sh_mobile_lcdc_chan *ch = handle;

	FUNC2(ch->lcdc, _LDDWD0R, data | LDDWDxR_WDACT | LDDWDxR_RSW);
	FUNC1(ch->lcdc, _LDSR, LDSR_AS, 0);
	FUNC2(ch->lcdc, _LDDWAR, LDDWAR_WA |
		   (FUNC0(ch) ? 2 : 0));
	FUNC1(ch->lcdc, _LDSR, LDSR_AS, 0);
}