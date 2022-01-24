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
struct scsi_cmnd {scalar_t__ host_scribble; } ;
struct request {int dummy; } ;
struct fnic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 

__attribute__((used)) static inline void
FUNC1(struct fnic *fnic, struct scsi_cmnd *sc)
{
	struct request *dummy = (struct request *)sc->host_scribble;

	FUNC0(dummy);
}