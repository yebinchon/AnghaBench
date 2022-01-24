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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum bfi_asic_gen { ____Placeholder_bfi_asic_gen } bfi_asic_gen ;

/* Variables and functions */
#define  BFI_ASIC_GEN_CB 130 
#define  BFI_ASIC_GEN_CT 129 
#define  BFI_ASIC_GEN_CT2 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32*
FUNC3(enum bfi_asic_gen asic_gen, u32 off)
{
	switch (asic_gen) {
	case BFI_ASIC_GEN_CB:
		return FUNC0(off);
		break;
	case BFI_ASIC_GEN_CT:
		return FUNC2(off);
		break;
	case BFI_ASIC_GEN_CT2:
		return FUNC1(off);
		break;
	default:
		return NULL;
	}
}