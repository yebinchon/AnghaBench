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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct bfad_hal_comp {int /*<<< orphan*/  comp; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  scalar_t__ bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BFA_STATUS_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfad_hal_comp*) ; 
 int /*<<< orphan*/  bfad_hcb_comp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct Scsi_Host *shost)
{
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_s         *bfad = im_port->bfad;
	struct bfad_hal_comp fcomp;
	unsigned long   flags;
	bfa_status_t    rc;

	FUNC2(&fcomp.comp);
	FUNC3(&bfad->bfad_lock, flags);
	rc = FUNC1(FUNC0(&bfad->bfa), bfad_hcb_comp,
					&fcomp);
	FUNC4(&bfad->bfad_lock, flags);

	if (rc != BFA_STATUS_OK)
		return;

	FUNC5(&fcomp.comp);

	return;
}