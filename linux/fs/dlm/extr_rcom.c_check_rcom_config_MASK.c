#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rcom_config {int /*<<< orphan*/  rf_lsflags; int /*<<< orphan*/  rf_lvblen; } ;
struct TYPE_2__ {int h_version; } ;
struct dlm_rcom {TYPE_1__ rc_header; scalar_t__ rc_buf; } ;
struct dlm_ls {scalar_t__ ls_lvblen; scalar_t__ ls_exflags; } ;

/* Variables and functions */
 int DLM_HEADER_MAJOR ; 
 int DLM_HEADER_MINOR ; 
 int EPROTO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*,char*,scalar_t__,scalar_t__,int,...) ; 

__attribute__((used)) static int FUNC2(struct dlm_ls *ls, struct dlm_rcom *rc, int nodeid)
{
	struct rcom_config *rf = (struct rcom_config *) rc->rc_buf;

	if ((rc->rc_header.h_version & 0xFFFF0000) != DLM_HEADER_MAJOR) {
		FUNC1(ls, "version mismatch: %x nodeid %d: %x",
			  DLM_HEADER_MAJOR | DLM_HEADER_MINOR, nodeid,
			  rc->rc_header.h_version);
		return -EPROTO;
	}

	if (FUNC0(rf->rf_lvblen) != ls->ls_lvblen ||
	    FUNC0(rf->rf_lsflags) != ls->ls_exflags) {
		FUNC1(ls, "config mismatch: %d,%x nodeid %d: %d,%x",
			  ls->ls_lvblen, ls->ls_exflags, nodeid,
			  FUNC0(rf->rf_lvblen),
			  FUNC0(rf->rf_lsflags));
		return -EPROTO;
	}
	return 0;
}