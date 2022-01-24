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
struct hvfb_par {int update; int fb_ready; int /*<<< orphan*/  dwork; int /*<<< orphan*/  hvfb_panic_nb; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;
struct fb_info {struct hvfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 struct fb_info* FUNC3 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hv_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  panic_notifier_list ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hv_device *hdev)
{
	struct fb_info *info = FUNC3(hdev);
	struct hvfb_par *par = info->par;

	FUNC0(&panic_notifier_list,
					 &par->hvfb_panic_nb);

	par->update = false;
	par->fb_ready = false;

	FUNC6(info);
	FUNC1(&par->dwork);

	FUNC7(hdev->channel);
	FUNC4(hdev, NULL);

	FUNC5(info);
	FUNC2(info);

	return 0;
}