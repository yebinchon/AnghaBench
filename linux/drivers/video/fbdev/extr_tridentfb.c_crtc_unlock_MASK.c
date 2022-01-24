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
struct tridentfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_CRTC_V_SYNC_END ; 
 int FUNC0 (struct tridentfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tridentfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct tridentfb_par *par)
{
	FUNC1(par, VGA_CRTC_V_SYNC_END,
		 FUNC0(par, VGA_CRTC_V_SYNC_END) & 0x7F);
}