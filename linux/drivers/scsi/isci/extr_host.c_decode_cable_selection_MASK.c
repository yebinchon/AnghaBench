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
struct isci_host {int dummy; } ;
typedef  enum cable_selections { ____Placeholder_cable_selections } cable_selections ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct isci_host*) ; 

enum cable_selections FUNC2(struct isci_host *ihost, int phy)
{
	return FUNC0(phy, *FUNC1(ihost));
}