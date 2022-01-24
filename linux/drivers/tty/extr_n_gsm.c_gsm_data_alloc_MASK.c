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
typedef  void* u8 ;
struct gsm_mux {int dummy; } ;
struct gsm_msg {int len; int /*<<< orphan*/  list; void* ctrl; void* addr; scalar_t__ buffer; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct gsm_msg* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gsm_msg *FUNC2(struct gsm_mux *gsm, u8 addr, int len,
								u8 ctrl)
{
	struct gsm_msg *m = FUNC1(sizeof(struct gsm_msg) + len + HDR_LEN,
								GFP_ATOMIC);
	if (m == NULL)
		return NULL;
	m->data = m->buffer + HDR_LEN - 1;	/* Allow for FCS */
	m->len = len;
	m->addr = addr;
	m->ctrl = ctrl;
	FUNC0(&m->list);
	return m;
}