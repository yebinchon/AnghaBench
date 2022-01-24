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
struct ulptx_idata {int dummy; } ;
struct ulp_mem_io {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {struct cxgbit_device* cdev; } ;
struct cxgbit_sock {int /*<<< orphan*/  ppodq; int /*<<< orphan*/  tid; TYPE_1__ com; } ;
struct cxgbit_device {int dummy; } ;
struct cxgbi_task_tag_info {int dummy; } ;
struct cxgbi_ppm {int dummy; } ;
struct cxgbi_pagepod {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct cxgbit_device*,struct cxgbi_ppm*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_pagepod*,struct cxgbi_task_tag_info*,struct scatterlist**,unsigned int*) ; 

__attribute__((used)) static int
FUNC3(struct cxgbi_ppm *ppm, struct cxgbit_sock *csk,
			struct cxgbi_task_tag_info *ttinfo, unsigned int idx,
			unsigned int npods, struct scatterlist **sg_pp,
			unsigned int *sg_off)
{
	struct cxgbit_device *cdev = csk->com.cdev;
	struct sk_buff *skb;
	struct ulp_mem_io *req;
	struct ulptx_idata *idata;
	struct cxgbi_pagepod *ppod;
	unsigned int i;

	skb = FUNC1(cdev, ppm, idx, npods, csk->tid);
	if (!skb)
		return -ENOMEM;

	req = (struct ulp_mem_io *)skb->data;
	idata = (struct ulptx_idata *)(req + 1);
	ppod = (struct cxgbi_pagepod *)(idata + 1);

	for (i = 0; i < npods; i++, ppod++)
		FUNC2(ppod, ttinfo, sg_pp, sg_off);

	FUNC0(&csk->ppodq, skb);

	return 0;
}