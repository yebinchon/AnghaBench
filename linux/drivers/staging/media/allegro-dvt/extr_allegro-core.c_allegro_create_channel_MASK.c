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
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  channel_user_ids; } ;
struct allegro_channel {scalar_t__ user_id; int level; int error; int /*<<< orphan*/  mcu_channel_id; int /*<<< orphan*/  completion; int /*<<< orphan*/  mpeg_video_gop_size; int /*<<< orphan*/  mpeg_video_cpb_size; int /*<<< orphan*/  mpeg_video_bitrate_peak; int /*<<< orphan*/  mpeg_video_bitrate; int /*<<< orphan*/  mpeg_video_bitrate_mode; int /*<<< orphan*/  mpeg_video_h264_level; int /*<<< orphan*/  mpeg_video_h264_profile; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  codec; struct allegro_dev* dev; } ;
typedef  enum v4l2_mpeg_video_h264_level { ____Placeholder_v4l2_mpeg_video_h264_level } v4l2_mpeg_video_h264_level ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_dev*,struct allegro_channel*) ; 
 scalar_t__ FUNC2 (struct allegro_dev*) ; 
 scalar_t__ FUNC3 (struct allegro_channel*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct allegro_channel *channel)
{
	struct allegro_dev *dev = channel->dev;
	unsigned long timeout;
	enum v4l2_mpeg_video_h264_level min_level;

	if (FUNC3(channel)) {
		FUNC12(&dev->v4l2_dev,
			  "channel already exists\n");
		return 0;
	}

	channel->user_id = FUNC2(dev);
	if (channel->user_id < 0) {
		FUNC11(&dev->v4l2_dev,
			 "no free channels available\n");
		return -EBUSY;
	}
	FUNC7(channel->user_id, &dev->channel_user_ids);

	FUNC10(1, debug, &dev->v4l2_dev,
		 "user %d: creating channel (%4.4s, %dx%d@%d)\n",
		 channel->user_id,
		 (char *)&channel->codec, channel->width, channel->height, 25);

	min_level = FUNC6(channel->width, channel->height);
	if (channel->level < min_level) {
		FUNC12(&dev->v4l2_dev,
			  "user %d: selected Level %s too low: increasing to Level %s\n",
			  channel->user_id,
			  FUNC8(V4L2_CID_MPEG_VIDEO_H264_LEVEL)[channel->level],
			  FUNC8(V4L2_CID_MPEG_VIDEO_H264_LEVEL)[min_level]);
		channel->level = min_level;
	}

	FUNC9(channel->mpeg_video_h264_profile, true);
	FUNC9(channel->mpeg_video_h264_level, true);
	FUNC9(channel->mpeg_video_bitrate_mode, true);
	FUNC9(channel->mpeg_video_bitrate, true);
	FUNC9(channel->mpeg_video_bitrate_peak, true);
	FUNC9(channel->mpeg_video_cpb_size, true);
	FUNC9(channel->mpeg_video_gop_size, true);

	FUNC5(&channel->completion);
	FUNC1(dev, channel);
	timeout = FUNC13(&channel->completion,
					      FUNC4(5000));
	if (timeout == 0)
		channel->error = -ETIMEDOUT;
	if (channel->error)
		goto err;

	FUNC10(1, debug, &dev->v4l2_dev,
		 "channel %d: accepting buffers\n",
		 channel->mcu_channel_id);

	return 0;

err:
	FUNC0(channel);

	return channel->error;
}