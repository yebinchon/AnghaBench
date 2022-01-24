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
struct pn533_fw_version {int /*<<< orphan*/  support; int /*<<< orphan*/  rev; int /*<<< orphan*/  ver; int /*<<< orphan*/  ic; } ;
struct pn533 {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PN533_CMD_GET_FIRMWARE_VERSION ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct pn533*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct pn533*,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct pn533 *dev,
				      struct pn533_fw_version *fv)
{
	struct sk_buff *skb;
	struct sk_buff *resp;

	skb = FUNC3(dev, 0);
	if (!skb)
		return -ENOMEM;

	resp = FUNC4(dev, PN533_CMD_GET_FIRMWARE_VERSION, skb);
	if (FUNC0(resp))
		return FUNC1(resp);

	fv->ic = resp->data[0];
	fv->ver = resp->data[1];
	fv->rev = resp->data[2];
	fv->support = resp->data[3];

	FUNC2(resp);
	return 0;
}