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

/* Variables and functions */
 unsigned char PPP_ALLSTATIONS ; 
 unsigned char PPP_UI ; 
 struct sk_buff* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC3(unsigned char *data,
					       unsigned int length)
{
	struct sk_buff *skb;

	if (length > 2 && data[0] == PPP_ALLSTATIONS && data[1] == PPP_UI) {
		length -= 2;
		data += 2;
	}

	skb = FUNC0(length + 4);
	if (skb == NULL)
		return NULL;
	FUNC2(skb, 2);
	FUNC1(skb, data, length);

	return skb;
}