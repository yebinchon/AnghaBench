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
typedef  int u16 ;
struct uwb_ie_drp {int /*<<< orphan*/  drp_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct uwb_ie_drp *ie, int tiebreaker)
{
	u16 drp_control = FUNC1(ie->drp_control);
	drp_control = (drp_control & ~(0x1 << 11)) | (tiebreaker << 11);
	ie->drp_control = FUNC0(drp_control);
}