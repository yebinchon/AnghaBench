#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ oui; } ;
union hdmi_vendor_any_infoframe {int /*<<< orphan*/  hdmi; TYPE_1__ any; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HDMI_IEEE_OUI ; 
 int FUNC0 (union hdmi_vendor_any_infoframe const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC2(const union hdmi_vendor_any_infoframe *frame,
				    void *buffer, size_t size)
{
	int ret;

	ret = FUNC0(frame);
	if (ret)
		return ret;

	/* we only know about HDMI vendor infoframes */
	if (frame->any.oui != HDMI_IEEE_OUI)
		return -EINVAL;

	return FUNC1(&frame->hdmi, buffer, size);
}