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
struct csio_lnode {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_lnode*) ; 
 struct Scsi_Host* FUNC1 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static void
FUNC3(struct csio_lnode *ln)
{
	struct Scsi_Host  *shost = FUNC1(ln);

	FUNC0(ln);

	FUNC2(shost);
}