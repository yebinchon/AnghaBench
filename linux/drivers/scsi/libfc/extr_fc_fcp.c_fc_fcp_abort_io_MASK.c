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
struct fc_lport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_HRD_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fc_lport *lport)
{
	FUNC0(lport, -1, -1, FC_HRD_ERROR);
}