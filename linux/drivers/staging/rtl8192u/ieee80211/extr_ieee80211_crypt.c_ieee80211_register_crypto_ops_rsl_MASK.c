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
struct ieee80211_crypto_ops {int /*<<< orphan*/  name; } ;
struct ieee80211_crypto_alg {int /*<<< orphan*/  list; struct ieee80211_crypto_ops* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  algs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* hcrypt ; 
 struct ieee80211_crypto_alg* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ieee80211_crypto_ops *ops)
{
	unsigned long flags;
	struct ieee80211_crypto_alg *alg;

	if (!hcrypt)
		return -1;

	alg = FUNC0(sizeof(*alg), GFP_KERNEL);
	if (!alg)
		return -ENOMEM;

	alg->ops = ops;

	FUNC3(&hcrypt->lock, flags);
	FUNC1(&alg->list, &hcrypt->algs);
	FUNC4(&hcrypt->lock, flags);

	FUNC2("ieee80211_crypt: registered algorithm '%s'\n",
	       ops->name);

	return 0;
}