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

/* Variables and functions */
 unsigned char WDC_SR_FANGOOD ; 
 unsigned char WDC_SR_ISII1 ; 
 unsigned char WDC_SR_ISOI0 ; 
 unsigned char WDC_SR_PSUOVER ; 
 unsigned char WDC_SR_PSUUNDR ; 
 unsigned char WDC_SR_TGOOD ; 
 int WDIOF_EXTERN1 ; 
 int WDIOF_EXTERN2 ; 
 int WDIOF_FANFAULT ; 
 int WDIOF_OVERHEAT ; 
 int WDIOF_POWEROVER ; 
 int WDIOF_POWERUNDER ; 
 int /*<<< orphan*/  WDT_SR ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ tachometer ; 
 int type ; 
 int /*<<< orphan*/  wdtpci_lock ; 

__attribute__((used)) static int FUNC3(int *status)
{
	unsigned char new_status;
	unsigned long flags;

	FUNC1(&wdtpci_lock, flags);
	new_status = FUNC0(WDT_SR);
	FUNC2(&wdtpci_lock, flags);

	*status = 0;
	if (new_status & WDC_SR_ISOI0)
		*status |= WDIOF_EXTERN1;
	if (new_status & WDC_SR_ISII1)
		*status |= WDIOF_EXTERN2;
	if (type == 501) {
		if (!(new_status & WDC_SR_TGOOD))
			*status |= WDIOF_OVERHEAT;
		if (!(new_status & WDC_SR_PSUOVER))
			*status |= WDIOF_POWEROVER;
		if (!(new_status & WDC_SR_PSUUNDR))
			*status |= WDIOF_POWERUNDER;
		if (tachometer) {
			if (!(new_status & WDC_SR_FANGOOD))
				*status |= WDIOF_FANFAULT;
		}
	}
	return 0;
}