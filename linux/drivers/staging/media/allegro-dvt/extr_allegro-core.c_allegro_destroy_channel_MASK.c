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
struct allegro_dev {int /*<<< orphan*/  channel_user_ids; int /*<<< orphan*/  v4l2_dev; } ;
struct allegro_channel {int mcu_channel_id; int user_id; int /*<<< orphan*/  mpeg_video_gop_size; int /*<<< orphan*/  mpeg_video_cpb_size; int /*<<< orphan*/  mpeg_video_bitrate_peak; int /*<<< orphan*/  mpeg_video_bitrate; int /*<<< orphan*/  mpeg_video_bitrate_mode; int /*<<< orphan*/  mpeg_video_h264_level; int /*<<< orphan*/  mpeg_video_h264_profile; int /*<<< orphan*/  completion; struct allegro_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct allegro_dev*,struct allegro_channel*) ; 
 scalar_t__ FUNC1 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct allegro_channel *channel)
{
	struct allegro_dev *dev = channel->dev;
	unsigned long timeout;

	if (FUNC1(channel)) {
		FUNC6(&channel->completion);
		FUNC0(dev, channel);
		timeout = FUNC9(&channel->completion,
						      FUNC5(5000));
		if (timeout == 0)
			FUNC8(&dev->v4l2_dev,
				  "channel %d: timeout while destroying\n",
				  channel->mcu_channel_id);

		channel->mcu_channel_id = -1;
	}

	FUNC3(channel);
	FUNC4(channel);

	FUNC7(channel->mpeg_video_h264_profile, false);
	FUNC7(channel->mpeg_video_h264_level, false);
	FUNC7(channel->mpeg_video_bitrate_mode, false);
	FUNC7(channel->mpeg_video_bitrate, false);
	FUNC7(channel->mpeg_video_bitrate_peak, false);
	FUNC7(channel->mpeg_video_cpb_size, false);
	FUNC7(channel->mpeg_video_gop_size, false);

	if (channel->user_id != -1) {
		FUNC2(channel->user_id, &dev->channel_user_ids);
		channel->user_id = -1;
	}
}