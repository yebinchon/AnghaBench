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
struct iscsi_conn {struct iscsi_chap* auth_protocol; } ;
struct iscsi_chap {int /*<<< orphan*/  challenge; } ;

/* Variables and functions */
 int CHAP_CHALLENGE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned char*) ; 
 scalar_t__ FUNC4 (char*,char*,unsigned char*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(
	struct iscsi_conn *conn,
	int caller,
	char *c_str,
	unsigned int *c_len)
{
	int ret;
	unsigned char challenge_asciihex[CHAP_CHALLENGE_LENGTH * 2 + 1];
	struct iscsi_chap *chap = conn->auth_protocol;

	FUNC2(challenge_asciihex, 0, CHAP_CHALLENGE_LENGTH * 2 + 1);

	ret = FUNC1(chap->challenge, CHAP_CHALLENGE_LENGTH);
	if (FUNC5(ret))
		return ret;
	FUNC0(challenge_asciihex, chap->challenge,
				CHAP_CHALLENGE_LENGTH);
	/*
	 * Set CHAP_C, and copy the generated challenge into c_str.
	 */
	*c_len += FUNC4(c_str + *c_len, "CHAP_C=0x%s", challenge_asciihex);
	*c_len += 1;

	FUNC3("[%s] Sending CHAP_C=0x%s\n\n", (caller) ? "server" : "client",
			challenge_asciihex);
	return 0;
}