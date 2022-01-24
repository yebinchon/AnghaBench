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
typedef  int /*<<< orphan*/  u8 ;
struct gsm_mux {int /*<<< orphan*/ * dlci; int /*<<< orphan*/  ftype; } ;
struct gsm_msg {int* data; } ;

/* Variables and functions */
 int EA ; 
 struct gsm_msg* FUNC0 (struct gsm_mux*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gsm_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC3(struct gsm_mux *gsm, int cmd, const u8 *data,
					int dlen)
{
	struct gsm_msg *msg;
	msg = FUNC0(gsm, 0, dlen + 2, gsm->ftype);
	if (msg == NULL)
		return;
	msg->data[0] = (cmd & 0xFE) << 1 | EA;	/* Clear C/R */
	msg->data[1] = (dlen << 1) | EA;
	FUNC2(msg->data + 2, data, dlen);
	FUNC1(gsm->dlci[0], msg);
}