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
typedef  int u32 ;
struct fotg210_udc {scalar_t__ reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMATFNR_ACC_CXF ; 
 int /*<<< orphan*/  DMATFNR_DISDMA ; 
 scalar_t__ FOTG210_CXPORT ; 
 scalar_t__ FOTG210_DMATFNR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct fotg210_udc *fotg210,
		   u8 *buffer)
{
	int i = 0;
	u8 *tmp = buffer;
	u32 data;
	u32 length = 8;

	FUNC1(DMATFNR_ACC_CXF, fotg210->reg + FOTG210_DMATFNR);

	for (i = (length >> 2); i > 0; i--) {
		data = FUNC0(fotg210->reg + FOTG210_CXPORT);
		*tmp = data & 0xFF;
		*(tmp + 1) = (data >> 8) & 0xFF;
		*(tmp + 2) = (data >> 16) & 0xFF;
		*(tmp + 3) = (data >> 24) & 0xFF;
		tmp = tmp + 4;
	}

	switch (length % 4) {
	case 1:
		data = FUNC0(fotg210->reg + FOTG210_CXPORT);
		*tmp = data & 0xFF;
		break;
	case 2:
		data = FUNC0(fotg210->reg + FOTG210_CXPORT);
		*tmp = data & 0xFF;
		*(tmp + 1) = (data >> 8) & 0xFF;
		break;
	case 3:
		data = FUNC0(fotg210->reg + FOTG210_CXPORT);
		*tmp = data & 0xFF;
		*(tmp + 1) = (data >> 8) & 0xFF;
		*(tmp + 2) = (data >> 16) & 0xFF;
		break;
	default:
		break;
	}

	FUNC1(DMATFNR_DISDMA, fotg210->reg + FOTG210_DMATFNR);
}