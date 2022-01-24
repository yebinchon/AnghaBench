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
struct v4l2_encoder_cmd {int cmd; } ;
struct file {int dummy; } ;
struct allegro_channel {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_ENC_CMD_START 129 
#define  V4L2_ENC_CMD_STOP 128 
 int FUNC0 (struct allegro_channel*) ; 
 int FUNC1 (struct allegro_channel*) ; 
 struct allegro_channel* FUNC2 (void*) ; 
 int FUNC3 (struct file*,void*,struct v4l2_encoder_cmd*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *fh,
			       struct v4l2_encoder_cmd *cmd)
{
	struct allegro_channel *channel = FUNC2(fh);
	int err;

	err = FUNC3(file, fh, cmd);
	if (err)
		return err;

	switch (cmd->cmd) {
	case V4L2_ENC_CMD_STOP:
		err = FUNC1(channel);
		break;
	case V4L2_ENC_CMD_START:
		err = FUNC0(channel);
		break;
	default:
		err = -EINVAL;
		break;
	}

	return err;
}