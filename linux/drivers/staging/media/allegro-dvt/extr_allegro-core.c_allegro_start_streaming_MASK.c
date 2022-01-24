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
struct vb2_queue {scalar_t__ type; } ;
struct allegro_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct allegro_channel {scalar_t__ csequence; scalar_t__ osequence; struct allegro_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLEGRO_STATE_ENCODING ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct allegro_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 struct allegro_channel* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC4(struct vb2_queue *q, unsigned int count)
{
	struct allegro_channel *channel = FUNC3(q);
	struct allegro_dev *dev = channel->dev;

	FUNC2(2, debug, &dev->v4l2_dev,
		 "%s: start streaming\n",
		 FUNC0(q->type) ? "output" : "capture");

	if (FUNC0(q->type)) {
		channel->osequence = 0;
		FUNC1(channel, ALLEGRO_STATE_ENCODING);
	} else if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		channel->csequence = 0;
	}

	return 0;
}