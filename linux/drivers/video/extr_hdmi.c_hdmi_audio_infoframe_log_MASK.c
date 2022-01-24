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
struct hdmi_audio_infoframe {char* channels; char* channel_allocation; char* level_shift_value; scalar_t__ downmix_inhibit; int /*<<< orphan*/  coding_type_ext; int /*<<< orphan*/  sample_frequency; int /*<<< orphan*/  sample_size; int /*<<< orphan*/  coding_type; } ;
struct hdmi_any_infoframe {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct device*,struct hdmi_any_infoframe const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(const char *level,
				     struct device *dev,
				     const struct hdmi_audio_infoframe *frame)
{
	FUNC4(level, dev,
				  (const struct hdmi_any_infoframe *)frame);

	if (frame->channels)
		FUNC5("    channels: %u\n", frame->channels - 1);
	else
		FUNC5("    channels: Refer to stream header\n");
	FUNC5("    coding type: %s\n",
			FUNC1(frame->coding_type));
	FUNC5("    sample size: %s\n",
			FUNC3(frame->sample_size));
	FUNC5("    sample frequency: %s\n",
			FUNC2(frame->sample_frequency));
	FUNC5("    coding type ext: %s\n",
			FUNC0(frame->coding_type_ext));
	FUNC5("    channel allocation: 0x%x\n",
			frame->channel_allocation);
	FUNC5("    level shift value: %u dB\n",
			frame->level_shift_value);
	FUNC5("    downmix inhibit: %s\n",
			frame->downmix_inhibit ? "Yes" : "No");
}