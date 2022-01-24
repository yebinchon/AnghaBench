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
typedef  int u32 ;
struct amvdec_session {struct amvdec_core* core; } ;
struct amvdec_core {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASSIST_MBOX1_CLR_REG ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MREG_BUFFEROUT ; 
 int /*<<< orphan*/  MREG_FATAL_ERROR ; 
 int /*<<< orphan*/  MREG_FRAME_OFFSET ; 
 int /*<<< orphan*/  MREG_PIC_INFO ; 
 int PICINFO_PROG ; 
 int PICINFO_TOP_FIRST ; 
 int V4L2_FIELD_INTERLACED_BT ; 
 int V4L2_FIELD_INTERLACED_TB ; 
 int V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct amvdec_session*,int,int,int) ; 
 int FUNC3 (struct amvdec_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amvdec_core*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amvdec_session*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static irqreturn_t FUNC7(struct amvdec_session *sess)
{
	struct amvdec_core *core = sess->core;
	u32 reg;
	u32 pic_info;
	u32 is_progressive;
	u32 buffer_index;
	u32 field = V4L2_FIELD_NONE;
	u32 offset;

	FUNC4(core, ASSIST_MBOX1_CLR_REG, 1);
	reg = FUNC3(core, MREG_FATAL_ERROR);
	if (reg == 1) {
		FUNC6(core->dev, "MPEG1/2 fatal error\n");
		FUNC1(sess);
		return IRQ_HANDLED;
	}

	reg = FUNC3(core, MREG_BUFFEROUT);
	if (!reg)
		return IRQ_HANDLED;

	/* Unclear what this means */
	if ((reg & FUNC0(23, 17)) == FUNC0(23, 17))
		goto end;

	pic_info = FUNC3(core, MREG_PIC_INFO);
	is_progressive = pic_info & PICINFO_PROG;

	if (!is_progressive)
		field = (pic_info & PICINFO_TOP_FIRST) ?
			V4L2_FIELD_INTERLACED_TB :
			V4L2_FIELD_INTERLACED_BT;

	FUNC5(sess);
	buffer_index = ((reg & 0xf) - 1) & 7;
	offset = FUNC3(core, MREG_FRAME_OFFSET);
	FUNC2(sess, buffer_index, offset, field);

end:
	FUNC4(core, MREG_BUFFEROUT, 0);
	return IRQ_HANDLED;
}