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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct nci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct nci_dev *ndev, struct sk_buff *skb)
{
	__u8 status = skb->data[0];

	FUNC0(ndev, status);
	return 0;
}