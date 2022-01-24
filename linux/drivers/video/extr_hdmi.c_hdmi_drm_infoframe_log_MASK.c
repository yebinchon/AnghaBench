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
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct hdmi_drm_infoframe {int /*<<< orphan*/  max_fall; int /*<<< orphan*/  max_cll; int /*<<< orphan*/  min_display_mastering_luminance; int /*<<< orphan*/  max_display_mastering_luminance; TYPE_2__ white_point; TYPE_1__* display_primaries; int /*<<< orphan*/  eotf; int /*<<< orphan*/  metadata_type; int /*<<< orphan*/  length; } ;
struct hdmi_any_infoframe {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct device*,struct hdmi_any_infoframe*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 

__attribute__((used)) static void FUNC2(const char *level,
				   struct device *dev,
				   const struct hdmi_drm_infoframe *frame)
{
	int i;

	FUNC0(level, dev,
				  (struct hdmi_any_infoframe *)frame);
	FUNC1("length: %d\n", frame->length);
	FUNC1("metadata type: %d\n", frame->metadata_type);
	FUNC1("eotf: %d\n", frame->eotf);
	for (i = 0; i < 3; i++) {
		FUNC1("x[%d]: %d\n", i, frame->display_primaries[i].x);
		FUNC1("y[%d]: %d\n", i, frame->display_primaries[i].y);
	}

	FUNC1("white point x: %d\n", frame->white_point.x);
	FUNC1("white point y: %d\n", frame->white_point.y);

	FUNC1("max_display_mastering_luminance: %d\n",
		 frame->max_display_mastering_luminance);
	FUNC1("min_display_mastering_luminance: %d\n",
		 frame->min_display_mastering_luminance);

	FUNC1("max_cll: %d\n", frame->max_cll);
	FUNC1("max_fall: %d\n", frame->max_fall);
}