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
typedef  void* u32 ;
struct fchs_s {int /*<<< orphan*/  ox_id; void* s_id; void* d_id; int /*<<< orphan*/  rx_id; int /*<<< orphan*/  f_ctl; int /*<<< orphan*/  type; int /*<<< orphan*/  cat_info; int /*<<< orphan*/  routing; } ;

/* Variables and functions */
 int FCTL_END_SEQ ; 
 int FCTL_FS_EXCH ; 
 int FCTL_SEQ_INI ; 
 int FCTL_SI_XFER ; 
 int /*<<< orphan*/  FC_CAT_UNSOLICIT_CTRL ; 
 int /*<<< orphan*/  FC_RTG_FC4_DEV_DATA ; 
 int /*<<< orphan*/  FC_RXID_ANY ; 
 int /*<<< orphan*/  FC_TYPE_SERVICES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct fchs_s*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct fchs_s *fchs, u32 d_id, u32 s_id, u32 ox_id)
{
	FUNC2(fchs, 0, sizeof(struct fchs_s));

	fchs->routing = FC_RTG_FC4_DEV_DATA;
	fchs->cat_info = FC_CAT_UNSOLICIT_CTRL;
	fchs->type = FC_TYPE_SERVICES;
	fchs->f_ctl =
		FUNC0(FCTL_SEQ_INI | FCTL_FS_EXCH | FCTL_END_SEQ |
			      FCTL_SI_XFER);
	fchs->rx_id = FC_RXID_ANY;
	fchs->d_id = (d_id);
	fchs->s_id = (s_id);
	fchs->ox_id = FUNC1(ox_id);

	/*
	 * @todo no need to set ox_id for request
	 *       no need to set rx_id for response
	 */
}