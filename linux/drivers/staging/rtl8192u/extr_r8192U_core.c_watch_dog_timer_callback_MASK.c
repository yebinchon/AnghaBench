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
struct timer_list {int dummy; } ;
struct r8192_priv {int /*<<< orphan*/  watch_dog_timer; int /*<<< orphan*/  watch_dog_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_WATCH_DOG_TIME ; 
 struct r8192_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct r8192_priv* priv ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  watch_dog_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct r8192_priv *priv = FUNC0(priv, t, watch_dog_timer);

	FUNC3(&priv->watch_dog_wq, 0);
	FUNC1(&priv->watch_dog_timer,
		  jiffies + FUNC2(IEEE80211_WATCH_DOG_TIME));
}