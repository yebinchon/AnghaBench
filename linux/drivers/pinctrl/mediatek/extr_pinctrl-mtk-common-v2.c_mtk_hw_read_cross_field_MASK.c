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
struct mtk_pinctrl {int dummy; } ;
struct mtk_pin_field {int bitpos; scalar_t__ next; scalar_t__ offset; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_pin_field*,int*,int*) ; 
 int FUNC2 (struct mtk_pinctrl*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtk_pinctrl *hw,
				    struct mtk_pin_field *pf, int *value)
{
	int nbits_l, nbits_h, h, l;

	FUNC1(pf, &nbits_h, &nbits_l);

	l  = (FUNC2(hw, pf->index, pf->offset)
	      >> pf->bitpos) & (FUNC0(nbits_l) - 1);
	h  = (FUNC2(hw, pf->index, pf->offset + pf->next))
	      & (FUNC0(nbits_h) - 1);

	*value = (h << nbits_l) | l;
}