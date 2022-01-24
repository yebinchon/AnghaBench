#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct amvdec_session {TYPE_2__* core; TYPE_1__* fmt_out; } ;
struct amvdec_ops {int (* start ) (struct amvdec_session*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  dos_parser_clk; int /*<<< orphan*/  dos_clk; } ;
struct TYPE_3__ {struct amvdec_ops* vdec_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amvdec_session*) ; 
 int FUNC3 (struct amvdec_session*) ; 

__attribute__((used)) static int FUNC4(struct amvdec_session *sess)
{
	int ret;
	struct amvdec_ops *vdec_ops = sess->fmt_out->vdec_ops;

	ret = FUNC1(sess->core->dos_parser_clk);
	if (ret)
		return ret;

	ret = FUNC1(sess->core->dos_clk);
	if (ret)
		goto disable_dos_parser;

	ret = vdec_ops->start(sess);
	if (ret)
		goto disable_dos;

	FUNC2(sess);

	return 0;

disable_dos:
	FUNC0(sess->core->dos_clk);
disable_dos_parser:
	FUNC0(sess->core->dos_parser_clk);

	return ret;
}