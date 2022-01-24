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
struct sclp_sd_file {int /*<<< orphan*/  data; } ;
struct kobject {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sclp_sd_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sclp_sd_file* FUNC2 (struct kobject*) ; 

__attribute__((used)) static void FUNC3(struct kobject *kobj)
{
	struct sclp_sd_file *sd_file = FUNC2(kobj);

	FUNC1(&sd_file->data);
	FUNC0(sd_file);
}