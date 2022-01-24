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
struct cifs_tcon {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int,struct cifs_tcon*,void**,void**) ; 
 int FUNC1 (struct cifs_tcon*,int) ; 

__attribute__((used)) static int
FUNC2(int smb_command, int wct, struct cifs_tcon *tcon,
	 void **request_buf, void **response_buf)
{
	int rc;

	rc = FUNC1(tcon, smb_command);
	if (rc)
		return rc;

	return FUNC0(smb_command, wct, tcon, request_buf, response_buf);
}