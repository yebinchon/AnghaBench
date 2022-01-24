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
typedef  int u8 ;
typedef  int u32 ;
struct aac_srb {int* cdb; int /*<<< orphan*/  flags; } ;
struct aac_srb_unit {struct aac_srb srb; } ;
struct aac_dev {int dummy; } ;
struct aac_ciss_identify_pd {int dummy; } ;

/* Variables and functions */
 int AAC_MAX_LUN ; 
 int CISS_IDENTIFY_PHYSICAL_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SRB_DataIn ; 
 int FUNC0 (struct aac_dev*,struct aac_srb_unit*,struct aac_ciss_identify_pd*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_ciss_identify_pd*) ; 
 struct aac_ciss_identify_pd* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_srb_unit*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct aac_dev *dev,
	struct aac_ciss_identify_pd **identify_resp, u32 bus, u32 target)
{
	int rcode = -ENOMEM;
	int datasize;
	struct aac_srb_unit srbu;
	struct aac_srb *srbcmd;
	struct aac_ciss_identify_pd *identify_reply;

	datasize = sizeof(struct aac_ciss_identify_pd);
	identify_reply = FUNC3(datasize, GFP_KERNEL);
	if (!identify_reply)
		goto out;

	FUNC4(&srbu, 0, sizeof(struct aac_srb_unit));

	srbcmd = &srbu.srb;
	srbcmd->flags	= FUNC1(SRB_DataIn);
	srbcmd->cdb[0]	= 0x26;
	srbcmd->cdb[2]	= (u8)((AAC_MAX_LUN + target) & 0x00FF);
	srbcmd->cdb[6]	= CISS_IDENTIFY_PHYSICAL_DEVICE;

	rcode = FUNC0(dev, &srbu, identify_reply, datasize);
	if (FUNC5(rcode < 0))
		goto mem_free_all;

	*identify_resp = identify_reply;

out:
	return rcode;
mem_free_all:
	FUNC2(identify_reply);
	goto out;
}