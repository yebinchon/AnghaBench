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
struct scsi_device {int /*<<< orphan*/  sdev_target; } ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC1(struct scsi_device *SDp, __u32 flag)
{
	return (FUNC0(SDp->sdev_target) & flag) == flag;
}