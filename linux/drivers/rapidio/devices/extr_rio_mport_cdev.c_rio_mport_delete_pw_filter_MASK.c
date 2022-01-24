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
struct rio_mport_pw_filter {int /*<<< orphan*/  priv_node; int /*<<< orphan*/  md_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rio_mport_pw_filter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rio_mport_pw_filter *pw_filter)
{
	FUNC1(&pw_filter->md_node);
	FUNC1(&pw_filter->priv_node);
	FUNC0(pw_filter);
}