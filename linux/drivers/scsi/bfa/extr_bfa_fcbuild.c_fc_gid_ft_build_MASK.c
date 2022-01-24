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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct fchs_s {int dummy; } ;
struct fcgs_gidft_req_s {scalar_t__ area_id; scalar_t__ domain_id; int /*<<< orphan*/  fc4_type; } ;
struct ct_hdr_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_NAME_SERVER ; 
 int /*<<< orphan*/  GS_GID_FT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_hdr_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fchs_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fcgs_gidft_req_s*,int /*<<< orphan*/ ,int) ; 

u16
FUNC4(struct fchs_s *fchs, void *pyld, u32 s_id, u8 fc4_type)
{

	struct ct_hdr_s *cthdr = (struct ct_hdr_s *) pyld;
	struct fcgs_gidft_req_s *gidft = (struct fcgs_gidft_req_s *)(cthdr + 1);
	u32        d_id = FUNC0(FC_NAME_SERVER);

	FUNC2(fchs, d_id, s_id, 0);

	FUNC1(cthdr, s_id, GS_GID_FT);

	FUNC3(gidft, 0, sizeof(struct fcgs_gidft_req_s));
	gidft->fc4_type = fc4_type;
	gidft->domain_id = 0;
	gidft->area_id = 0;

	return sizeof(struct fcgs_gidft_req_s) + sizeof(struct ct_hdr_s);
}