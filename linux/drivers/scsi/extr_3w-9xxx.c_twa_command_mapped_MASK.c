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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 scalar_t__ TW_MIN_SGL_LENGTH ; 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int FUNC1 (struct scsi_cmnd*) ; 

__attribute__((used)) static bool FUNC2(struct scsi_cmnd *cmd)
{
	return FUNC1(cmd) != 1 ||
		FUNC0(cmd) >= TW_MIN_SGL_LENGTH;
}