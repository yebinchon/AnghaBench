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
struct uwb_rsv_alloc_info {int max_mas; int min_mas; } ;

/* Variables and functions */
 int UWB_MAS_PER_ZONE ; 
 int UWB_NUM_ZONES ; 
 scalar_t__ UWB_RSV_ALLOC_FOUND ; 
 int UWB_RSV_ALLOC_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (struct uwb_rsv_alloc_info*) ; 
 scalar_t__ FUNC1 (struct uwb_rsv_alloc_info*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct uwb_rsv_alloc_info *ai, int interval)
{
	int n_safe, n_unsafe, n_mas;  
	int n_column = UWB_NUM_ZONES / interval;
	int max_per_zone = ai->max_mas / n_column;
	int min_per_zone = ai->min_mas / n_column;

	if (ai->min_mas % n_column)
		min_per_zone++;

	if (min_per_zone > UWB_MAS_PER_ZONE) {
		return UWB_RSV_ALLOC_NOT_FOUND;
	}
    
	if (max_per_zone > UWB_MAS_PER_ZONE) {
		max_per_zone = UWB_MAS_PER_ZONE;
	}
    
	for (n_mas = max_per_zone; n_mas >= min_per_zone; n_mas--) {
		if (FUNC1(ai, interval, 0, n_mas) == UWB_RSV_ALLOC_NOT_FOUND)
			continue;
		for (n_safe = n_mas; n_safe >= 0; n_safe--) {
			n_unsafe = n_mas - n_safe;
			if (FUNC1(ai, interval, n_safe, n_unsafe) == UWB_RSV_ALLOC_FOUND) {
				FUNC0(ai);
				return UWB_RSV_ALLOC_FOUND;
			}
		}
	}
	return UWB_RSV_ALLOC_NOT_FOUND;
}