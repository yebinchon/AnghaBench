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
struct visornic_devdata {int /*<<< orphan*/  xmit_cmdrsp; int /*<<< orphan*/  cmdrsp_rcv; int /*<<< orphan*/  rcvbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct visornic_devdata *devdata)
{
	FUNC0(devdata->rcvbuf);
	FUNC0(devdata->cmdrsp_rcv);
	FUNC0(devdata->xmit_cmdrsp);
}