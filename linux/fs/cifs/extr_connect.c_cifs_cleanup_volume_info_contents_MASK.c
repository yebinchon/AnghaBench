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
struct smb_vol {int /*<<< orphan*/  prepath; int /*<<< orphan*/  iocharset; int /*<<< orphan*/  domainname; int /*<<< orphan*/  UNC; int /*<<< orphan*/  password; int /*<<< orphan*/  username; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct smb_vol *volume_info)
{
	FUNC0(volume_info->username);
	FUNC1(volume_info->password);
	FUNC0(volume_info->UNC);
	FUNC0(volume_info->domainname);
	FUNC0(volume_info->iocharset);
	FUNC0(volume_info->prepath);
}