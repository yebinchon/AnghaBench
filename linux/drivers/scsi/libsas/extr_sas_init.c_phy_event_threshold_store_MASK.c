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
struct sas_ha_struct {int event_thres; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline ssize_t FUNC3(struct device *dev,
			struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct sas_ha_struct *sha = FUNC0(shost);

	sha->event_thres = FUNC2(buf, NULL, 10);

	/* threshold cannot be set too small */
	if (sha->event_thres < 32)
		sha->event_thres = 32;

	return count;
}