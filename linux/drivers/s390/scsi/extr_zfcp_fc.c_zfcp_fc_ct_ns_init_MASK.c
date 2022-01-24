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
typedef  int u16 ;
struct fc_ct_hdr {void* ct_mr_size; void* ct_cmd; int /*<<< orphan*/  ct_fs_subtype; int /*<<< orphan*/  ct_fs_type; int /*<<< orphan*/  ct_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_CT_REV ; 
 int /*<<< orphan*/  FC_FST_DIR ; 
 int /*<<< orphan*/  FC_NS_SUBTYPE ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(struct fc_ct_hdr *ct_hdr, u16 cmd, u16 mr_size)
{
	ct_hdr->ct_rev = FC_CT_REV;
	ct_hdr->ct_fs_type = FC_FST_DIR;
	ct_hdr->ct_fs_subtype = FC_NS_SUBTYPE;
	ct_hdr->ct_cmd = FUNC0(cmd);
	ct_hdr->ct_mr_size = FUNC0(mr_size / 4);
}