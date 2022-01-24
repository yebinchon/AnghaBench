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
struct scsi_target {size_t id; int /*<<< orphan*/  dev; } ;
struct esp_target_data {struct scsi_target* starget; } ;
struct esp {struct esp_target_data* target; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct esp* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct scsi_target *starget)
{
	struct esp *esp = FUNC1(FUNC0(&starget->dev));
	struct esp_target_data *tp = &esp->target[starget->id];

	tp->starget = starget;

	return 0;
}