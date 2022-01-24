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
struct snic_tgt {int dummy; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 
 scalar_t__ FUNC1 (struct snic_tgt*) ; 
 struct snic_tgt* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct scsi_device *sdev)
{
	struct snic_tgt *tgt = FUNC2(FUNC0(sdev));

	if (!tgt || FUNC1(tgt))
		return -ENXIO;

	return 0;
}