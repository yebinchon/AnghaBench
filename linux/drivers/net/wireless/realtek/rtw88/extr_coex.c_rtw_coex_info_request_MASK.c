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
struct sk_buff {int dummy; } ;
struct rtw_coex {int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; int /*<<< orphan*/  wait; } ;
struct rtw_dev {struct rtw_coex coex; } ;
struct rtw_coex_info_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COEX_REQUEST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,struct rtw_coex_info_req*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct rtw_dev *rtwdev,
					     struct rtw_coex_info_req *req)
{
	struct rtw_coex *coex = &rtwdev->coex;
	struct sk_buff *skb_resp = NULL;

	FUNC0(&coex->mutex);

	FUNC3(rtwdev, req);

	if (!FUNC6(coex->wait, !FUNC5(&coex->queue),
				COEX_REQUEST_TIMEOUT)) {
		FUNC2(rtwdev, "coex request time out\n");
		goto out;
	}

	skb_resp = FUNC4(&coex->queue);
	if (!skb_resp) {
		FUNC2(rtwdev, "failed to get coex info response\n");
		goto out;
	}

out:
	FUNC1(&coex->mutex);
	return skb_resp;
}