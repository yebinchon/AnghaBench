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
struct zd_rf {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct zd_rf *rf, char *buffer, size_t size)
{
	return FUNC0(buffer, size, "%s", FUNC1(rf->type));
}