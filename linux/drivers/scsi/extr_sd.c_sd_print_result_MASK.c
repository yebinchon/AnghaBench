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
struct scsi_disk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 char const* FUNC0 (int) ; 
 char const* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_disk const*,char*,char const*,char const*,char const*) ; 

__attribute__((used)) static void FUNC5(const struct scsi_disk *sdkp, const char *msg,
			    int result)
{
	const char *hb_string = FUNC3(result);
	const char *db_string = FUNC2(result);

	if (hb_string || db_string)
		FUNC4(KERN_INFO, sdkp,
			  "%s: Result: hostbyte=%s driverbyte=%s\n", msg,
			  hb_string ? hb_string : "invalid",
			  db_string ? db_string : "invalid");
	else
		FUNC4(KERN_INFO, sdkp,
			  "%s: Result: hostbyte=0x%02x driverbyte=0x%02x\n",
			  msg, FUNC1(result), FUNC0(result));
}