#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int region_cnt; } ;
struct omapfb_device {int /*<<< orphan*/  dev; TYPE_2__* panel; int /*<<< orphan*/ * fb_info; TYPE_1__ mem_desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;int /*<<< orphan*/  (* disable ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  OMAPFB_ACTIVE 128 
 int /*<<< orphan*/  OMAPFB_UPDATE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omapfb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct omapfb_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct omapfb_device *fbdev, int state)
{
	int i;

	switch (state) {
	case OMAPFB_ACTIVE:
		for (i = 0; i < fbdev->mem_desc.region_cnt; i++)
			FUNC9(fbdev->fb_info[i]);
		/* fall through */
	case 7:
		FUNC5(fbdev);
		/* fall through */
	case 6:
		if (fbdev->panel->disable)
			fbdev->panel->disable(fbdev->panel);
		/* fall through */
	case 5:
		FUNC4(fbdev, OMAPFB_UPDATE_DISABLED);
		/* fall through */
	case 4:
		FUNC6(fbdev);
		/* fall through */
	case 3:
		FUNC1(fbdev);
		/* fall through */
	case 2:
		if (fbdev->panel->cleanup)
			fbdev->panel->cleanup(fbdev->panel);
		/* fall through */
	case 1:
		FUNC2(fbdev->dev, NULL);
		FUNC3(fbdev);
	case 0:
		/* nothing to free */
		break;
	default:
		FUNC0();
	}
}