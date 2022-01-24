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
struct rtllib_device {int softmac_features; int is_set_key; int /*<<< orphan*/  link_change_wq; scalar_t__ wap_set; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* data_hard_stop ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int IEEE_SOFTMAC_TX_QUEUE ; 
 scalar_t__ FUNC0 (struct rtllib_device*) ; 
 int /*<<< orphan*/  RTLLIB_NOLINK ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct rtllib_device *ieee)
{
	FUNC2(ieee->dev);
	if (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)
		FUNC4(ieee);

	if (ieee->data_hard_stop)
		ieee->data_hard_stop(ieee->dev);
	if (FUNC0(ieee))
		FUNC1(ieee);
	ieee->state = RTLLIB_NOLINK;
	ieee->is_set_key = false;
	ieee->wap_set = 0;

	FUNC5(&ieee->link_change_wq, 0);

	FUNC3(ieee);
}