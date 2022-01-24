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
struct sclp_sd_data {int /*<<< orphan*/  dsize_bytes; } ;
struct sclp_sd_file {int /*<<< orphan*/  kobj; int /*<<< orphan*/  data_mutex; struct sclp_sd_data data; int /*<<< orphan*/  di; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sclp_sd_data*) ; 
 int FUNC6 (struct sclp_sd_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sclp_sd_file *sd_file)
{
	const char *name = FUNC0(&sd_file->kobj);
	struct sclp_sd_data data;
	int rc;

	rc = FUNC6(&data, sd_file->di);
	if (rc) {
		if (rc == -ENOENT) {
			FUNC4("No data is available for the %s data entity\n",
				 name);
		}
		return rc;
	}

	FUNC2(&sd_file->data_mutex);
	FUNC5(&sd_file->data);
	sd_file->data = data;
	FUNC3(&sd_file->data_mutex);

	FUNC4("A %zu-byte %s data entity was retrieved\n", data.dsize_bytes,
		name);
	FUNC1(&sd_file->kobj, KOBJ_CHANGE);

	return 0;
}