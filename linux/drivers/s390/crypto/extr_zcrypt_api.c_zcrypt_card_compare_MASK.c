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
struct zcrypt_card {TYPE_1__* card; int /*<<< orphan*/  load; } ;
struct TYPE_2__ {int /*<<< orphan*/  total_request_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(struct zcrypt_card *zc,
				       struct zcrypt_card *pref_zc,
				       unsigned int weight,
				       unsigned int pref_weight)
{
	if (!pref_zc)
		return false;
	weight += FUNC0(&zc->load);
	pref_weight += FUNC0(&pref_zc->load);
	if (weight == pref_weight)
		return FUNC0(&zc->card->total_request_count) >
			FUNC0(&pref_zc->card->total_request_count);
	return weight > pref_weight;
}