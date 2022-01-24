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
struct radeonfb_info {scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ CHIP_FAMILY_RV250 ; 
 scalar_t__ CHIP_FAMILY_RV280 ; 
 unsigned long CRTC_CRT_ON ; 
 int /*<<< orphan*/  CRTC_EXT_CNTL ; 
 unsigned long DAC_CMP_EN ; 
 unsigned long DAC_CMP_OUTPUT ; 
 int /*<<< orphan*/  DAC_CNTL ; 
 int /*<<< orphan*/  DAC_EXT_CNTL ; 
 unsigned long DAC_FORCE_BLANK_OFF_EN ; 
 unsigned long DAC_FORCE_DATA_EN ; 
 unsigned long DAC_FORCE_DATA_MASK ; 
 unsigned long DAC_FORCE_DATA_SEL_MASK ; 
 int DAC_FORCE_DATA_SHIFT ; 
 unsigned long DAC_PDWN ; 
 unsigned long DAC_RANGE_CNTL_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int MT_CRT ; 
 int MT_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long PIXCLK_ALWAYS_ONb ; 
 unsigned long PIXCLK_DAC_ALWAYS_ONb ; 
 int /*<<< orphan*/  VCLK_ECP_CNTL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct radeonfb_info *rinfo, int is_crt_dac)
{
    int	          connected = 0;

    /* the monitor either wasn't connected or it is a non-DDC CRT.
     * try to probe it
     */
    if (is_crt_dac) {
	unsigned long ulOrigVCLK_ECP_CNTL;
	unsigned long ulOrigDAC_CNTL;
	unsigned long ulOrigDAC_EXT_CNTL;
	unsigned long ulOrigCRTC_EXT_CNTL;
	unsigned long ulData;
	unsigned long ulMask;

	ulOrigVCLK_ECP_CNTL = FUNC0(VCLK_ECP_CNTL);

	ulData              = ulOrigVCLK_ECP_CNTL;
	ulData             &= ~(PIXCLK_ALWAYS_ONb
				| PIXCLK_DAC_ALWAYS_ONb);
	ulMask              = ~(PIXCLK_ALWAYS_ONb
				| PIXCLK_DAC_ALWAYS_ONb);
	FUNC2(VCLK_ECP_CNTL, ulData, ulMask);

	ulOrigCRTC_EXT_CNTL = FUNC1(CRTC_EXT_CNTL);
	ulData              = ulOrigCRTC_EXT_CNTL;
	ulData             |= CRTC_CRT_ON;
	FUNC3(CRTC_EXT_CNTL, ulData);
   
	ulOrigDAC_EXT_CNTL = FUNC1(DAC_EXT_CNTL);
	ulData             = ulOrigDAC_EXT_CNTL;
	ulData            &= ~DAC_FORCE_DATA_MASK;
	ulData            |=  (DAC_FORCE_BLANK_OFF_EN
			       |DAC_FORCE_DATA_EN
			       |DAC_FORCE_DATA_SEL_MASK);
	if ((rinfo->family == CHIP_FAMILY_RV250) ||
	    (rinfo->family == CHIP_FAMILY_RV280))
	    ulData |= (0x01b6 << DAC_FORCE_DATA_SHIFT);
	else
	    ulData |= (0x01ac << DAC_FORCE_DATA_SHIFT);

	FUNC3(DAC_EXT_CNTL, ulData);

	ulOrigDAC_CNTL     = FUNC1(DAC_CNTL);
	ulData             = ulOrigDAC_CNTL;
	ulData            |= DAC_CMP_EN;
	ulData            &= ~(DAC_RANGE_CNTL_MASK
			       | DAC_PDWN);
	ulData            |= 0x2;
	FUNC3(DAC_CNTL, ulData);

	FUNC4(1);

	ulData     = FUNC1(DAC_CNTL);
	connected =  (DAC_CMP_OUTPUT & ulData) ? 1 : 0;
  
	ulData    = ulOrigVCLK_ECP_CNTL;
	ulMask    = 0xFFFFFFFFL;
	FUNC2(VCLK_ECP_CNTL, ulData, ulMask);

	FUNC3(DAC_CNTL,      ulOrigDAC_CNTL     );
	FUNC3(DAC_EXT_CNTL,  ulOrigDAC_EXT_CNTL );
	FUNC3(CRTC_EXT_CNTL, ulOrigCRTC_EXT_CNTL);
    }

    return connected ? MT_CRT : MT_NONE;
}