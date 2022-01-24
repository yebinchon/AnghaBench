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
struct iscsi_data {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iscsi_conn*,unsigned char*,struct iscsi_cmd**) ; 
 int FUNC1 (struct iscsi_cmd*,struct iscsi_data*,int) ; 
 int FUNC2 (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_data*) ; 

__attribute__((used)) static int FUNC3(struct iscsi_conn *conn, unsigned char *buf)
{
	struct iscsi_cmd *cmd = NULL;
	struct iscsi_data *hdr = (struct iscsi_data *)buf;
	int rc;
	bool data_crc_failed = false;

	rc = FUNC0(conn, buf, &cmd);
	if (rc < 0)
		return 0;
	else if (!cmd)
		return 0;

	rc = FUNC2(conn, cmd, hdr);
	if (rc < 0)
		return rc;
	else if (rc > 0)
		data_crc_failed = true;

	return FUNC1(cmd, hdr, data_crc_failed);
}