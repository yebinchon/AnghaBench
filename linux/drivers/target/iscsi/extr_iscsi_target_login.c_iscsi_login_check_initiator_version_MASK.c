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
typedef  int u8 ;
struct iscsi_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_LOGIN_STATUS_NO_VERSION ; 
 int /*<<< orphan*/  ISCSI_STATUS_CLS_INITIATOR_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static int FUNC2(
	struct iscsi_conn *conn,
	u8 version_max,
	u8 version_min)
{
	if ((version_max != 0x00) || (version_min != 0x00)) {
		FUNC1("Unsupported iSCSI IETF Pre-RFC Revision,"
			" version Min/Max 0x%02x/0x%02x, rejecting login.\n",
			version_min, version_max);
		FUNC0(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
				ISCSI_LOGIN_STATUS_NO_VERSION);
		return -1;
	}

	return 0;
}