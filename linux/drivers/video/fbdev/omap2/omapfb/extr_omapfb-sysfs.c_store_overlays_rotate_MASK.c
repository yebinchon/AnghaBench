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
typedef  int u8 ;
struct omapfb_info {int num_overlays; int* rotation; int /*<<< orphan*/  region; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct omapfb_info* FUNC0 (struct fb_info*) ; 
 int OMAPFB_MAX_OVL_PER_FB ; 
 struct fb_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int FUNC3 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char**,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct fb_info *fbi = FUNC1(dev);
	struct omapfb_info *ofbi = FUNC0(fbi);
	int num_ovls = 0, r, i;
	int len;
	bool changed = false;
	u8 rotation[OMAPFB_MAX_OVL_PER_FB];

	len = FUNC7(buf);
	if (buf[len - 1] == '\n')
		len = len - 1;

	FUNC2(fbi);

	if (len > 0) {
		char *p = (char *)buf;

		while (p < buf + len) {
			int rot;

			if (num_ovls == ofbi->num_overlays) {
				r = -EINVAL;
				goto out;
			}

			rot = FUNC6(p, &p, 0);
			if (rot < 0 || rot > 3) {
				r = -EINVAL;
				goto out;
			}

			if (ofbi->rotation[num_ovls] != rot)
				changed = true;

			rotation[num_ovls++] = rot;

			p++;
		}
	}

	if (num_ovls != ofbi->num_overlays) {
		r = -EINVAL;
		goto out;
	}

	if (changed) {
		for (i = 0; i < num_ovls; ++i)
			ofbi->rotation[i] = rotation[i];

		FUNC4(ofbi->region);

		r = FUNC3(fbi, 0);

		FUNC5(ofbi->region);

		if (r)
			goto out;

		/* FIXME error handling? */
	}

	r = count;
out:
	FUNC8(fbi);

	return r;
}