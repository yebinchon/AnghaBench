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
struct TYPE_3__ {void* height; void* width; int /*<<< orphan*/  sizeimage; scalar_t__ bytesperline; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  field; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLEGRO_HEIGHT_MAX ; 
 int /*<<< orphan*/  ALLEGRO_HEIGHT_MIN ; 
 int /*<<< orphan*/  ALLEGRO_WIDTH_MAX ; 
 int /*<<< orphan*/  ALLEGRO_WIDTH_MIN ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_H264 ; 
 int /*<<< orphan*/  __u32 ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh,
				   struct v4l2_format *f)
{
	f->fmt.pix.field = V4L2_FIELD_NONE;

	f->fmt.pix.width = FUNC0(__u32, f->fmt.pix.width,
				   ALLEGRO_WIDTH_MIN, ALLEGRO_WIDTH_MAX);
	f->fmt.pix.height = FUNC0(__u32, f->fmt.pix.height,
				    ALLEGRO_HEIGHT_MIN, ALLEGRO_HEIGHT_MAX);

	f->fmt.pix.pixelformat = V4L2_PIX_FMT_H264;
	f->fmt.pix.bytesperline = 0;
	f->fmt.pix.sizeimage =
		FUNC1(f->fmt.pix.width, f->fmt.pix.height);

	return 0;
}