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
typedef  int u8 ;
struct rtl8xxxu_priv {TYPE_1__* fops; } ;
struct TYPE_2__ {int total_page_num; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8xxxu_priv*,int,int) ; 

int FUNC1(struct rtl8xxxu_priv *priv)
{
	int ret;
	int i;
	u8 last_tx_page;

	last_tx_page = priv->fops->total_page_num;

	for (i = 0; i < last_tx_page; i++) {
		ret = FUNC0(priv, i, i + 1);
		if (ret)
			goto exit;
	}

	ret = FUNC0(priv, last_tx_page, 0xff);
	if (ret)
		goto exit;

	/* Mark remaining pages as a ring buffer */
	for (i = last_tx_page + 1; i < 0xff; i++) {
		ret = FUNC0(priv, i, (i + 1));
		if (ret)
			goto exit;
	}

	/*  Let last entry point to the start entry of ring buffer */
	ret = FUNC0(priv, 0xff, last_tx_page + 1);
	if (ret)
		goto exit;

exit:
	return ret;
}