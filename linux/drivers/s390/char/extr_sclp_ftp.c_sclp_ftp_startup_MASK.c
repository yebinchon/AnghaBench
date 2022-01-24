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
struct sysinfo_2_2_2 {char* name; int /*<<< orphan*/  lpar_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sclp_ftp_event ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sysinfo_2_2_2*,int,int,int) ; 

int FUNC6(void)
{
#ifdef DEBUG
	unsigned long info;
#endif
	int rc;

	rc = FUNC4(&sclp_ftp_event);
	if (rc)
		return rc;

#ifdef DEBUG
	info = get_zeroed_page(GFP_KERNEL);

	if (info != 0) {
		struct sysinfo_2_2_2 *info222 = (struct sysinfo_2_2_2 *)info;

		if (!stsi(info222, 2, 2, 2)) { /* get SYSIB 2.2.2 */
			info222->name[sizeof(info222->name) - 1] = '\0';
			EBCASC_500(info222->name, sizeof(info222->name) - 1);
			pr_debug("SCLP (ET7) FTP Service working on LPAR %u (%s)\n",
				 info222->lpar_number, info222->name);
		}

		free_page(info);
	}
#endif	/* DEBUG */
	return 0;
}