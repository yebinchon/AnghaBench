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
struct dcssblk_dev_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DCSSBLK_PARM_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  dcssblk_devices_sem ; 
 struct dcssblk_dev_info* FUNC1 (char*) ; 
 int /*<<< orphan*/  dcssblk_root_dev ; 
 char* dcssblk_segments ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void)
{
	int rc, i, j, k;
	char buf[DCSSBLK_PARM_LEN + 1];
	struct dcssblk_dev_info *dev_info;

	for (i = 0; (i < DCSSBLK_PARM_LEN) && (dcssblk_segments[i] != '\0');
	     i++) {
		for (j = i; (j < DCSSBLK_PARM_LEN) &&
			    (dcssblk_segments[j] != ',')  &&
			    (dcssblk_segments[j] != '\0') &&
			    (dcssblk_segments[j] != '('); j++)
		{
			buf[j-i] = dcssblk_segments[j];
		}
		buf[j-i] = '\0';
		rc = FUNC0(dcssblk_root_dev, NULL, buf, j-i);
		if ((rc >= 0) && (dcssblk_segments[j] == '(')) {
			for (k = 0; (buf[k] != ':') && (buf[k] != '\0'); k++)
				buf[k] = FUNC5(buf[k]);
			buf[k] = '\0';
			if (!FUNC4(&dcssblk_segments[j], "(local)", 7)) {
				FUNC3(&dcssblk_devices_sem);
				dev_info = FUNC1(buf);
				FUNC6(&dcssblk_devices_sem);
				if (dev_info)
					FUNC2(&dev_info->dev,
							     NULL, "0\n", 2);
			}
		}
		while ((dcssblk_segments[j] != ',') &&
		       (dcssblk_segments[j] != '\0'))
		{
			j++;
		}
		if (dcssblk_segments[j] == '\0')
			break;
		i = j;
	}
}