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
struct geni_se {int dummy; } ;
typedef  enum geni_se_xfer_mode { ____Placeholder_geni_se_xfer_mode } geni_se_xfer_mode ;

/* Variables and functions */
#define  GENI_SE_DMA 130 
#define  GENI_SE_FIFO 129 
#define  GENI_SE_INVALID 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct geni_se*) ; 
 int /*<<< orphan*/  FUNC2 (struct geni_se*) ; 

void FUNC3(struct geni_se *se, enum geni_se_xfer_mode mode)
{
	FUNC0(mode != GENI_SE_FIFO && mode != GENI_SE_DMA);

	switch (mode) {
	case GENI_SE_FIFO:
		FUNC2(se);
		break;
	case GENI_SE_DMA:
		FUNC1(se);
		break;
	case GENI_SE_INVALID:
	default:
		break;
	}
}