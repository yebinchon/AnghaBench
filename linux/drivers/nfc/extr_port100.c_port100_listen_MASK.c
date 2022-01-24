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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct port100 {int dummy; } ;
struct nfc_digital_dev {int dummy; } ;
typedef  int /*<<< orphan*/  nfc_digital_cmd_complete_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct port100* FUNC0 (struct nfc_digital_dev*) ; 
 struct sk_buff* FUNC1 (struct port100*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfc_digital_dev*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC3(struct nfc_digital_dev *ddev, u16 timeout,
			  nfc_digital_cmd_complete_t cb, void *arg)
{
	struct port100 *dev = FUNC0(ddev);
	struct sk_buff *skb;

	skb = FUNC1(dev, 0);
	if (!skb)
		return -ENOMEM;

	return FUNC2(ddev, skb, timeout, cb, arg);
}