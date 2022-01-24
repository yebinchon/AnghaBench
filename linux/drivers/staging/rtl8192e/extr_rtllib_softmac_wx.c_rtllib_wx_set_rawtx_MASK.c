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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct rtllib_device {short raw_tx; scalar_t__ iw_mode; int /*<<< orphan*/  wx_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* data_hard_resume ) (int /*<<< orphan*/ ) ;} ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ IW_MODE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct rtllib_device *ieee,
			struct iw_request_info *info,
			union iwreq_data *wrqu, char *extra)
{

	int *parms = (int *)extra;
	int enable = (parms[0] > 0);
	short prev = ieee->raw_tx;

	FUNC0(&ieee->wx_mutex);

	if (enable)
		ieee->raw_tx = 1;
	else
		ieee->raw_tx = 0;

	FUNC2(ieee->dev, "raw TX is %s\n",
		    ieee->raw_tx ? "enabled" : "disabled");

	if (ieee->iw_mode == IW_MODE_MONITOR) {
		if (prev == 0 && ieee->raw_tx) {
			if (ieee->data_hard_resume)
				ieee->data_hard_resume(ieee->dev);

			FUNC4(ieee->dev);
		}

		if (prev && ieee->raw_tx == 1)
			FUNC3(ieee->dev);
	}

	FUNC1(&ieee->wx_mutex);

	return 0;
}