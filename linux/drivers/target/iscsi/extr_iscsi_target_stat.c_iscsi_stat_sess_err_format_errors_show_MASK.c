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
struct iscsi_sess_err_stats {int pdu_format_errors; } ;
struct iscsi_tiqn {struct iscsi_sess_err_stats sess_err_stats; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct iscsi_tiqn* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item,
		char *page)
{
	struct iscsi_tiqn *tiqn = FUNC0(item);
	struct iscsi_sess_err_stats *sess_err = &tiqn->sess_err_stats;

	return FUNC1(page, PAGE_SIZE, "%u\n", sess_err->pdu_format_errors);
}