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
struct iscsi_session {int /*<<< orphan*/  session_fall_back_to_erl0; int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

void FUNC2(struct iscsi_session *sess)
{
	FUNC1("Falling back to ErrorRecoveryLevel=0 for SID:"
			" %u\n", sess->sid);

	FUNC0(&sess->session_fall_back_to_erl0, 1);
}