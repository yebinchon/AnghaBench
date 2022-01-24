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
struct wusbhc {int dummy; } ;
struct whc {int dummy; } ;
struct uwb_mas_bm {int dummy; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  WUSBCMD_WUSBSI_MASK ; 
 int /*<<< orphan*/  WUSBGENCMDSTS_SET_MAS ; 
 int FUNC1 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct whc* FUNC3 (struct wusbhc*) ; 

int FUNC4(struct wusbhc *wusbhc, s8 stream_index, const struct uwb_mas_bm *mas_bm)
{
	struct whc *whc = FUNC3(wusbhc);

	if (stream_index >= 0)
		FUNC2(whc, WUSBCMD_WUSBSI_MASK, FUNC0(stream_index));

	return FUNC1(whc, WUSBGENCMDSTS_SET_MAS, 0, (void *)mas_bm, sizeof(*mas_bm));
}