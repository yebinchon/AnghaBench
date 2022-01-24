#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct var_t {int dummy; } ;
typedef  enum var_id_t { ____Placeholder_var_id_t } var_id_t ;
struct TYPE_2__ {struct var_t* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAXVARS ; 
 TYPE_1__** var_ptrs ; 

struct var_t *FUNC1(enum var_id_t var_id)
{
	FUNC0(var_id < 0 || var_id >= MAXVARS);
	FUNC0(!var_ptrs[var_id]);
	return var_ptrs[var_id]->data;
}