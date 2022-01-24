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
struct pn533_poll_modulations {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct pn533 {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct pn533*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC2(struct pn533 *dev,
					struct pn533_poll_modulations *mod)
{
	struct sk_buff *skb;

	skb = FUNC0(dev, mod->len);
	if (!skb)
		return NULL;

	FUNC1(skb, &mod->data, mod->len);

	return skb;
}