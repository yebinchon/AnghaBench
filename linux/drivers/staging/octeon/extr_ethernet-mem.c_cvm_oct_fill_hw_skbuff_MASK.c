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
struct sk_buff {int data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int pool, int size, int elements)
{
	int freed = elements;

	while (freed) {
		struct sk_buff *skb = FUNC1(size + 256);

		if (FUNC3(!skb))
			break;
		FUNC2(skb, 256 - (((unsigned long)skb->data) & 0x7f));
		*(struct sk_buff **)(skb->data - sizeof(void *)) = skb;
		FUNC0(skb->data, pool, size / 128);
		freed--;
	}
	return elements - freed;
}