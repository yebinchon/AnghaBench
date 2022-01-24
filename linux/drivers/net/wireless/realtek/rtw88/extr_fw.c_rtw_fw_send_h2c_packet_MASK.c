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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  seq; } ;
struct rtw_dev {TYPE_1__ h2c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  H2C_PKT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,char*) ; 
 int FUNC2 (struct rtw_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rtw_dev *rtwdev, u8 *h2c_pkt)
{
	int ret;

	FUNC3(&rtwdev->h2c.lock);

	FUNC0(h2c_pkt, rtwdev->h2c.seq);
	ret = FUNC2(rtwdev, h2c_pkt, H2C_PKT_SIZE);
	if (ret)
		FUNC1(rtwdev, "failed to send h2c packet\n");
	rtwdev->h2c.seq++;

	FUNC4(&rtwdev->h2c.lock);
}