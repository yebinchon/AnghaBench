#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct video_device {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct allegro_dev {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  channels; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; struct v4l2_ctrl_handler* ctrl_handler; } ;
struct allegro_channel {int bitrate; int bitrate_peak; int cpb_size; int gop_size; int mcu_channel_id; int user_id; TYPE_1__ fh; int /*<<< orphan*/  list; int /*<<< orphan*/  buffers_intermediate; int /*<<< orphan*/  buffers_reference; void* mpeg_video_gop_size; void* mpeg_video_cpb_size; void* mpeg_video_bitrate_peak; void* mpeg_video_bitrate; int /*<<< orphan*/  bitrate_mode; void* mpeg_video_bitrate_mode; void* mpeg_video_h264_level; void* mpeg_video_h264_profile; struct v4l2_ctrl_handler ctrl_handler; struct allegro_dev* dev; int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int ALLEGRO_GOP_SIZE_MAX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V4L2_CID_MIN_BUFFERS_FOR_OUTPUT ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_BITRATE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_BITRATE_MODE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_BITRATE_PEAK ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_GOP_SIZE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_CPB_SIZE ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_LEVEL ; 
 int /*<<< orphan*/  V4L2_CID_MPEG_VIDEO_H264_PROFILE ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_BITRATE_MODE_CBR ; 
 int V4L2_MPEG_VIDEO_H264_LEVEL_1B ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_H264_LEVEL_5_1 ; 
 int /*<<< orphan*/  V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE ; 
 int /*<<< orphan*/  allegro_ctrl_ops ; 
 int /*<<< orphan*/  allegro_queue_init ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct allegro_channel* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 void* FUNC9 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct video_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct allegro_channel*,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC13 (struct file*) ; 
 struct allegro_dev* FUNC14 (struct video_device*) ; 

__attribute__((used)) static int FUNC15(struct file *file)
{
	struct video_device *vdev = FUNC13(file);
	struct allegro_dev *dev = FUNC14(vdev);
	struct allegro_channel *channel = NULL;
	struct v4l2_ctrl_handler *handler;
	u64 mask;

	channel = FUNC3(sizeof(*channel), GFP_KERNEL);
	if (!channel)
		return -ENOMEM;

	FUNC11(&channel->fh, vdev);
	file->private_data = &channel->fh;
	FUNC10(&channel->fh);

	FUNC2(&channel->completion);

	channel->dev = dev;

	FUNC1(channel);

	handler = &channel->ctrl_handler;
	FUNC7(handler, 0);
	channel->mpeg_video_h264_profile = FUNC9(handler,
			&allegro_ctrl_ops,
			V4L2_CID_MPEG_VIDEO_H264_PROFILE,
			V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, 0x0,
			V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE);
	mask = 1 << V4L2_MPEG_VIDEO_H264_LEVEL_1B;
	channel->mpeg_video_h264_level = FUNC9(handler,
			&allegro_ctrl_ops,
			V4L2_CID_MPEG_VIDEO_H264_LEVEL,
			V4L2_MPEG_VIDEO_H264_LEVEL_5_1, mask,
			V4L2_MPEG_VIDEO_H264_LEVEL_5_1);
	channel->mpeg_video_bitrate_mode = FUNC9(handler,
			&allegro_ctrl_ops,
			V4L2_CID_MPEG_VIDEO_BITRATE_MODE,
			V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, 0,
			channel->bitrate_mode);
	channel->mpeg_video_bitrate = FUNC8(handler,
			&allegro_ctrl_ops,
			V4L2_CID_MPEG_VIDEO_BITRATE,
			0, FUNC5(V4L2_MPEG_VIDEO_H264_LEVEL_5_1),
			1, channel->bitrate);
	channel->mpeg_video_bitrate_peak = FUNC8(handler,
			&allegro_ctrl_ops,
			V4L2_CID_MPEG_VIDEO_BITRATE_PEAK,
			0, FUNC5(V4L2_MPEG_VIDEO_H264_LEVEL_5_1),
			1, channel->bitrate_peak);
	channel->mpeg_video_cpb_size = FUNC8(handler,
			&allegro_ctrl_ops,
			V4L2_CID_MPEG_VIDEO_H264_CPB_SIZE,
			0, FUNC6(V4L2_MPEG_VIDEO_H264_LEVEL_5_1),
			1, channel->cpb_size);
	channel->mpeg_video_gop_size = FUNC8(handler,
			&allegro_ctrl_ops,
			V4L2_CID_MPEG_VIDEO_GOP_SIZE,
			0, ALLEGRO_GOP_SIZE_MAX,
			1, channel->gop_size);
	FUNC8(handler,
			&allegro_ctrl_ops,
			V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
			1, 32,
			1, 1);
	channel->fh.ctrl_handler = handler;

	channel->mcu_channel_id = -1;
	channel->user_id = -1;

	FUNC0(&channel->buffers_reference);
	FUNC0(&channel->buffers_intermediate);

	FUNC4(&channel->list, &dev->channels);

	channel->fh.m2m_ctx = FUNC12(dev->m2m_dev, channel,
						allegro_queue_init);

	return 0;
}