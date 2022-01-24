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
struct vc_data {scalar_t__ vc_mode; int vc_num; TYPE_1__* vc_sw; } ;
struct console_font_op {int height; } ;
struct TYPE_2__ {int (* con_font_copy ) (struct vc_data*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int ENOTTY ; 
 scalar_t__ KD_TEXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct vc_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct vc_data *vc, struct console_font_op *op)
{
	int con = op->height;
	int rc;


	FUNC0();
	if (vc->vc_mode != KD_TEXT)
		rc = -EINVAL;
	else if (!vc->vc_sw->con_font_copy)
		rc = -ENOSYS;
	else if (con < 0 || !FUNC3(con))
		rc = -ENOTTY;
	else if (con == vc->vc_num)	/* nothing to do */
		rc = 0;
	else
		rc = vc->vc_sw->con_font_copy(vc, con);
	FUNC1();
	return rc;
}