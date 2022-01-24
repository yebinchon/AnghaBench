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
struct amvdec_session {int should_stop; TYPE_1__* core; TYPE_2__* fmt_out; } ;
struct amvdec_ops {int /*<<< orphan*/  (* stop ) (struct amvdec_session*) ;} ;
struct amvdec_codec_ops {int /*<<< orphan*/  (* drain ) (struct amvdec_session*) ;} ;
struct TYPE_4__ {struct amvdec_codec_ops* codec_ops; struct amvdec_ops* vdec_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  dos_parser_clk; int /*<<< orphan*/  dos_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC3 (struct amvdec_session*) ; 

__attribute__((used)) static void FUNC4(struct amvdec_session *sess)
{
	struct amvdec_ops *vdec_ops = sess->fmt_out->vdec_ops;
	struct amvdec_codec_ops *codec_ops = sess->fmt_out->codec_ops;

	sess->should_stop = 1;
	FUNC3(sess);
	if (codec_ops->drain)
		codec_ops->drain(sess);

	vdec_ops->stop(sess);
	FUNC0(sess->core->dos_clk);
	FUNC0(sess->core->dos_parser_clk);
}