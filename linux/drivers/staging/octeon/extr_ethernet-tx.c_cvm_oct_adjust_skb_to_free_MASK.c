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

/* Variables and functions */
 int MAX_SKB_TO_FREE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static inline int FUNC1(int skb_to_free, int fau)
{
	int undo;

	undo = skb_to_free > 0 ? MAX_SKB_TO_FREE : skb_to_free +
						   MAX_SKB_TO_FREE;
	if (undo > 0)
		FUNC0(fau, -undo);
	skb_to_free = -skb_to_free > MAX_SKB_TO_FREE ? MAX_SKB_TO_FREE :
						       -skb_to_free;
	return skb_to_free;
}