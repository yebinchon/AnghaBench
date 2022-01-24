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
struct SMB2_sess_data {int /*<<< orphan*/ * func; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC1(struct SMB2_sess_data *sess_data)
{
	FUNC0(VFS, "Kerberos negotiated but upcall support disabled!\n");
	sess_data->result = -EOPNOTSUPP;
	sess_data->func = NULL;
}