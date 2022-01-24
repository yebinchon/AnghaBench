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
struct iscsi_session {int dummy; } ;
struct iscsi_nopin {int /*<<< orphan*/  max_cmdsn; int /*<<< orphan*/  exp_cmdsn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct iscsi_session *session, struct iscsi_nopin *hdr)
{
	FUNC0(session, FUNC1(hdr->exp_cmdsn),
			     FUNC1(hdr->max_cmdsn));
}