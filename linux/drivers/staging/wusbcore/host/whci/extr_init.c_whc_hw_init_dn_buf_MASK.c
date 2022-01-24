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
struct whc {scalar_t__ base; int /*<<< orphan*/  dn_buf_dma; int /*<<< orphan*/  dn_buf; } ;

/* Variables and functions */
 scalar_t__ WUSBDNTSBUFADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct whc *whc)
{
	/* Clear the Device Notification buffer to ensure the V (valid)
	 * bits are clear.  */
	FUNC1(whc->dn_buf, 0, 4096);

	FUNC0(whc->dn_buf_dma, whc->base + WUSBDNTSBUFADDR);
}