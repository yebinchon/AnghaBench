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
struct dcon_priv {int ignore_fb_events; TYPE_1__* client; int /*<<< orphan*/  fbinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct dcon_priv *dcon, bool blank)
{
	int err;

	FUNC0();
	FUNC4(dcon->fbinfo);

	dcon->ignore_fb_events = true;
	err = FUNC3(dcon->fbinfo,
		       blank ? FB_BLANK_POWERDOWN : FB_BLANK_UNBLANK);
	dcon->ignore_fb_events = false;
	FUNC5(dcon->fbinfo);
	FUNC1();

	if (err) {
		FUNC2(&dcon->client->dev, "couldn't %sblank framebuffer\n",
			blank ? "" : "un");
		return false;
	}
	return true;
}