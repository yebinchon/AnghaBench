#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct aac_dev {int OIMR; int /*<<< orphan*/  msi_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  OIMR; int /*<<< orphan*/  IOAR; int /*<<< orphan*/  IDR; } ;

/* Variables and functions */
#define  AAC_CLEAR_AIF_BIT 134 
#define  AAC_CLEAR_SYNC_BIT 133 
#define  AAC_DISABLE_INTERRUPT 132 
#define  AAC_DISABLE_MSIX 131 
#define  AAC_ENABLE_INTERRUPT 130 
#define  AAC_ENABLE_INTX 129 
#define  AAC_ENABLE_MSIX 128 
 int AAC_INT_DISABLE_ALL ; 
 int AAC_INT_ENABLE_TYPE1_INTX ; 
 int AAC_INT_ENABLE_TYPE1_MSIX ; 
 TYPE_1__ MUnit ; 
 int PMC_ALL_INTERRUPT_BITS ; 
 int PMC_GLOBAL_INT_BIT0 ; 
 int PMC_GLOBAL_INT_BIT2 ; 
 int FUNC0 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct aac_dev *dev, int mode)
{
	u_int32_t val;

	switch (mode) {
	case AAC_ENABLE_INTERRUPT:
		FUNC1(dev,
			   MUnit.OIMR,
			   dev->OIMR = (dev->msi_enabled ?
					AAC_INT_ENABLE_TYPE1_MSIX :
					AAC_INT_ENABLE_TYPE1_INTX));
		break;

	case AAC_DISABLE_INTERRUPT:
		FUNC1(dev,
			   MUnit.OIMR,
			   dev->OIMR = AAC_INT_DISABLE_ALL);
		break;

	case AAC_ENABLE_MSIX:
		/* set bit 6 */
		val = FUNC0(dev, MUnit.IDR);
		val |= 0x40;
		FUNC1(dev,  MUnit.IDR, val);
		FUNC0(dev, MUnit.IDR);
		/* unmask int. */
		val = PMC_ALL_INTERRUPT_BITS;
		FUNC1(dev, MUnit.IOAR, val);
		val = FUNC0(dev, MUnit.OIMR);
		FUNC1(dev,
			   MUnit.OIMR,
			   val & (~(PMC_GLOBAL_INT_BIT2 | PMC_GLOBAL_INT_BIT0)));
		break;

	case AAC_DISABLE_MSIX:
		/* reset bit 6 */
		val = FUNC0(dev, MUnit.IDR);
		val &= ~0x40;
		FUNC1(dev, MUnit.IDR, val);
		FUNC0(dev, MUnit.IDR);
		break;

	case AAC_CLEAR_AIF_BIT:
		/* set bit 5 */
		val = FUNC0(dev, MUnit.IDR);
		val |= 0x20;
		FUNC1(dev, MUnit.IDR, val);
		FUNC0(dev, MUnit.IDR);
		break;

	case AAC_CLEAR_SYNC_BIT:
		/* set bit 4 */
		val = FUNC0(dev, MUnit.IDR);
		val |= 0x10;
		FUNC1(dev, MUnit.IDR, val);
		FUNC0(dev, MUnit.IDR);
		break;

	case AAC_ENABLE_INTX:
		/* set bit 7 */
		val = FUNC0(dev, MUnit.IDR);
		val |= 0x80;
		FUNC1(dev, MUnit.IDR, val);
		FUNC0(dev, MUnit.IDR);
		/* unmask int. */
		val = PMC_ALL_INTERRUPT_BITS;
		FUNC1(dev, MUnit.IOAR, val);
		FUNC0(dev, MUnit.IOAR);
		val = FUNC0(dev, MUnit.OIMR);
		FUNC1(dev, MUnit.OIMR,
				val & (~(PMC_GLOBAL_INT_BIT2)));
		break;

	default:
		break;
	}
}