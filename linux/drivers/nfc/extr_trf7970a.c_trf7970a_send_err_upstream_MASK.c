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
struct trf7970a {int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct trf7970a*) ; 

__attribute__((used)) static void FUNC5(struct trf7970a *trf, int errno)
{
	FUNC2(trf->dev, "Error - state: %d, errno: %d\n", trf->state, errno);

	FUNC1(&trf->timeout_work);

	FUNC3(trf->rx_skb);
	trf->rx_skb = FUNC0(errno);

	FUNC4(trf);
}