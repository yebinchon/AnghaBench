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
struct qeth_card {int /*<<< orphan*/  dev; } ;
struct inet6_dev {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 struct inet6_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct qeth_card *card)
{
	struct inet6_dev *in6_dev;

	FUNC0(card, 4, "chkmcv6");

	if (!FUNC3(card, IPA_IPV6))
		return ;
	in6_dev = FUNC1(card->dev);
	if (!in6_dev)
		return;

	FUNC6();
	FUNC8(&in6_dev->lock);
	FUNC4(card, in6_dev);
	FUNC5(card);
	FUNC9(&in6_dev->lock);
	FUNC7();
	FUNC2(in6_dev);
}