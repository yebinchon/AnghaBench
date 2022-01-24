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
struct dlm_space {int dummy; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 struct dlm_space* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_space*) ; 

__attribute__((used)) static void FUNC2(struct config_item *i)
{
	struct dlm_space *sp = FUNC0(i);
	FUNC1(sp);
}