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
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int EACCES ; 
 int EINVAL ; 
 int SDEBUG_OPT_ALL_INJECTING ; 
 int SDEBUG_OPT_NOISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int sdebug_any_injecting_opt ; 
 scalar_t__ sdebug_every_nth ; 
 int sdebug_opts ; 
 int sdebug_verbose ; 
 int FUNC2 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *host, char *buffer,
				 int length)
{
	char arr[16];
	int opts;
	int minLen = length > 15 ? 15 : length;

	if (!FUNC0(CAP_SYS_ADMIN) || !FUNC0(CAP_SYS_RAWIO))
		return -EACCES;
	FUNC1(arr, buffer, minLen);
	arr[minLen] = '\0';
	if (1 != FUNC2(arr, "%d", &opts))
		return -EINVAL;
	sdebug_opts = opts;
	sdebug_verbose = !!(SDEBUG_OPT_NOISE & opts);
	sdebug_any_injecting_opt = !!(SDEBUG_OPT_ALL_INJECTING & opts);
	if (sdebug_every_nth != 0)
		FUNC3();
	return length;
}