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
struct st_nci_info {int /*<<< orphan*/  ndlc; int /*<<< orphan*/  flags; } ;
struct sk_buff {void* dev; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ST_NCI_RUNNING ; 
 struct st_nci_info* FUNC0 (struct nci_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nci_dev *ndev, struct sk_buff *skb)
{
	struct st_nci_info *info = FUNC0(ndev);

	skb->dev = (void *)ndev;

	if (!FUNC2(ST_NCI_RUNNING, &info->flags))
		return -EBUSY;

	return FUNC1(info->ndlc, skb);
}