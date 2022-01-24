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
struct scsi_qla_host {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Scsi_Host*) ; 

__attribute__((used)) static inline struct scsi_qla_host* FUNC1(struct Scsi_Host *shost)
{
	return (struct scsi_qla_host *)FUNC0(shost);
}