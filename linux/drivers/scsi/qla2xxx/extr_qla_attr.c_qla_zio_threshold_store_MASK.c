#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_5__ {TYPE_1__* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {scalar_t__ zio_mode; int /*<<< orphan*/  zio_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ QLA_ZIO_MODE_6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
	scsi_qla_host_t *vha = FUNC2(FUNC1(dev));
	int val = 0;

	if (vha->hw->zio_mode != QLA_ZIO_MODE_6)
		return -EINVAL;
	if (FUNC3(buf, "%d", &val) != 1)
		return -EINVAL;
	if (val < 0 || val > 256)
		return -ERANGE;

	FUNC0(&vha->hw->zio_threshold, val);
	return FUNC4(buf);
}