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
struct zfcp_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ no_auto_port_rescan ; 
 int /*<<< orphan*/  FUNC0 (struct zfcp_adapter*) ; 

void FUNC1(struct zfcp_adapter *adapter)
{
	if (no_auto_port_rescan)
		return;

	FUNC0(adapter);
}