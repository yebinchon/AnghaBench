#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfad_s {int /*<<< orphan*/  inst_no; } ;
struct bfad_im_port_s {int /*<<< orphan*/  idr_id; TYPE_1__* shost; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC1 (struct bfad_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfad_im_port_index ; 
 int /*<<< orphan*/  bfad_mutex ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(struct bfad_s *bfad, struct bfad_im_port_s *im_port)
{
	FUNC1(bfad, bfad->inst_no);
	FUNC0(KERN_INFO, bfad, bfa_log_level, "Free scsi%d\n",
			im_port->shost->host_no);

	FUNC2(im_port->shost);

	FUNC7(im_port->shost);
	FUNC6(im_port->shost);

	FUNC4(&bfad_mutex);
	FUNC3(&bfad_im_port_index, im_port->idr_id);
	FUNC5(&bfad_mutex);
}