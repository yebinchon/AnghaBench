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
struct TYPE_2__ {int /*<<< orphan*/  mctrl_word; } ;
struct hvsi_query_response {int verb; TYPE_1__ u; } ;
struct hvsi_priv {int mctrl_update; scalar_t__ inbuf; } ;

/* Variables and functions */
 int HVSI_TSCD ; 
#define  VSV_SEND_MODEM_CTL_STATUS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hvsi_priv*,int) ; 

__attribute__((used)) static void FUNC2(struct hvsi_priv *pv)
{
	struct hvsi_query_response *r =
		(struct hvsi_query_response *)pv->inbuf;

	switch(r->verb) {
	case VSV_SEND_MODEM_CTL_STATUS:
		FUNC1(pv, FUNC0(r->u.mctrl_word) & HVSI_TSCD);
		pv->mctrl_update = 1;
		break;
	}
}