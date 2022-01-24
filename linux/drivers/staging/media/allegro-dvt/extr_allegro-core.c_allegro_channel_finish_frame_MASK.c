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
typedef  scalar_t__ u32 ;
struct vb2_v4l2_buffer {scalar_t__ sequence; int /*<<< orphan*/  flags; int /*<<< orphan*/  vb2_buf; } ;
struct mcu_msg_encode_frame_response {int partition_table_size; scalar_t__ partition_table_offset; scalar_t__ slice_type; scalar_t__ is_idr; int /*<<< orphan*/  error_code; } ;
struct allegro_dev {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  v4l2_dev; TYPE_1__* plat_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct allegro_channel {scalar_t__ mcu_channel_id; TYPE_2__ fh; int /*<<< orphan*/  csequence; struct allegro_dev* dev; } ;
typedef  scalar_t__ ssize_t ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AL_ENC_SLICE_TYPE_I ; 
 scalar_t__ AL_ENC_SLICE_TYPE_P ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_KEYFRAME ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_PFRAME ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct allegro_channel*,struct vb2_v4l2_buffer*,int) ; 
 scalar_t__ FUNC1 (struct allegro_channel*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct allegro_channel*,char*,scalar_t__) ; 
 int /*<<< orphan*/  debug ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_v4l2_buffer*,struct vb2_v4l2_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct allegro_channel *channel,
		struct mcu_msg_encode_frame_response *msg)
{
	struct allegro_dev *dev = channel->dev;
	struct vb2_v4l2_buffer *src_buf;
	struct vb2_v4l2_buffer *dst_buf;
	struct {
		u32 offset;
		u32 size;
	} *partition;
	enum vb2_buffer_state state = VB2_BUF_STATE_ERROR;
	char *curr;
	ssize_t len;
	ssize_t free;

	src_buf = FUNC10(channel->fh.m2m_ctx);

	dst_buf = FUNC8(channel->fh.m2m_ctx);
	dst_buf->sequence = channel->csequence++;

	if (msg->error_code) {
		FUNC5(&dev->v4l2_dev,
			 "channel %d: error while encoding frame: %x\n",
			 channel->mcu_channel_id, msg->error_code);
		goto err;
	}

	if (msg->partition_table_size != 1) {
		FUNC11(&dev->v4l2_dev,
			  "channel %d: only handling first partition table entry (%d entries)\n",
			  channel->mcu_channel_id, msg->partition_table_size);
	}

	if (msg->partition_table_offset +
	    msg->partition_table_size * sizeof(*partition) >
	    FUNC12(&dst_buf->vb2_buf, 0)) {
		FUNC5(&dev->v4l2_dev,
			 "channel %d: partition table outside of dst_buf\n",
			 channel->mcu_channel_id);
		goto err;
	}

	partition =
	    FUNC13(&dst_buf->vb2_buf, 0) + msg->partition_table_offset;
	if (partition->offset + partition->size >
	    FUNC12(&dst_buf->vb2_buf, 0)) {
		FUNC5(&dev->v4l2_dev,
			 "channel %d: encoded frame is outside of dst_buf (offset 0x%x, size 0x%x)\n",
			 channel->mcu_channel_id, partition->offset,
			 partition->size);
		goto err;
	}

	FUNC4(2, debug, &dev->v4l2_dev,
		 "channel %d: encoded frame of size %d is at offset 0x%x\n",
		 channel->mcu_channel_id, partition->size, partition->offset);

	/*
	 * The payload must include the data before the partition offset,
	 * because we will put the sps and pps data there.
	 */
	FUNC14(&dst_buf->vb2_buf, 0,
			      partition->offset + partition->size);

	curr = FUNC13(&dst_buf->vb2_buf, 0);
	free = partition->offset;
	if (msg->is_idr) {
		len = FUNC2(channel, curr, free);
		if (len < 0) {
			FUNC5(&dev->v4l2_dev,
				 "not enough space for sequence parameter set: %zd left\n",
				 free);
			goto err;
		}
		curr += len;
		free -= len;
		FUNC4(1, debug, &dev->v4l2_dev,
			 "channel %d: wrote %zd byte SPS nal unit\n",
			 channel->mcu_channel_id, len);
	}

	if (msg->slice_type == AL_ENC_SLICE_TYPE_I) {
		len = FUNC1(channel, curr, free);
		if (len < 0) {
			FUNC5(&dev->v4l2_dev,
				 "not enough space for picture parameter set: %zd left\n",
				 free);
			goto err;
		}
		curr += len;
		free -= len;
		FUNC4(1, debug, &dev->v4l2_dev,
			 "channel %d: wrote %zd byte PPS nal unit\n",
			 channel->mcu_channel_id, len);
	}

	len = FUNC3(&dev->plat_dev->dev, curr, free);
	if (len < 0) {
		FUNC5(&dev->v4l2_dev,
			 "failed to write %zd filler data\n", free);
		goto err;
	}
	curr += len;
	free -= len;
	FUNC4(2, debug, &dev->v4l2_dev,
		 "channel %d: wrote %zd bytes filler nal unit\n",
		 channel->mcu_channel_id, len);

	if (free != 0) {
		FUNC5(&dev->v4l2_dev,
			 "non-VCL NAL units do not fill space until VCL NAL unit: %zd bytes left\n",
			 free);
		goto err;
	}

	state = VB2_BUF_STATE_DONE;

	FUNC6(src_buf, dst_buf, false);
	if (msg->is_idr)
		dst_buf->flags |= V4L2_BUF_FLAG_KEYFRAME;
	else
		dst_buf->flags |= V4L2_BUF_FLAG_PFRAME;

	FUNC4(1, debug, &dev->v4l2_dev,
		 "channel %d: encoded frame #%03d (%s%s, %d bytes)\n",
		 channel->mcu_channel_id,
		 dst_buf->sequence,
		 msg->is_idr ? "IDR, " : "",
		 msg->slice_type == AL_ENC_SLICE_TYPE_I ? "I slice" :
		 msg->slice_type == AL_ENC_SLICE_TYPE_P ? "P slice" : "unknown",
		 partition->size);

err:
	FUNC7(src_buf, VB2_BUF_STATE_DONE);

	FUNC0(channel, dst_buf, state);

	FUNC9(dev->m2m_dev, channel->fh.m2m_ctx);
}