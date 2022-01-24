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
typedef  int u_short ;
typedef  int u_char ;
typedef  int u32 ;
struct sym_hcb {int scripta_ba; int scripta_sz; int scriptb_ba; int scriptb_sz; int features; scalar_t__ scriptb0; scalar_t__ scripta0; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int BF ; 
 int FE_C10 ; 
 scalar_t__ FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sym_hcb*,int) ; 
 int FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int MDPE ; 
 int /*<<< orphan*/  nc_dbc ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  nc_sbcl ; 
 int /*<<< orphan*/  nc_sbdl ; 
 int /*<<< orphan*/  nc_scntl3 ; 
 int /*<<< orphan*/  nc_scntl4 ; 
 int /*<<< orphan*/  nc_sdid ; 
 int /*<<< orphan*/  nc_socl ; 
 int /*<<< orphan*/  nc_sxfer ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int) ; 
 struct sym_hcb* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 char* FUNC7 (struct sym_hcb*) ; 

__attribute__((used)) static void FUNC8(struct Scsi_Host *shost, u_short sist, u_char dstat)
{
	struct sym_hcb *np = FUNC5(shost);
	u32	dsp;
	int	script_ofs;
	int	script_size;
	char	*script_name;
	u_char	*script_base;
	int	i;

	dsp	= FUNC2(np, nc_dsp);

	if	(dsp > np->scripta_ba &&
		 dsp <= np->scripta_ba + np->scripta_sz) {
		script_ofs	= dsp - np->scripta_ba;
		script_size	= np->scripta_sz;
		script_base	= (u_char *) np->scripta0;
		script_name	= "scripta";
	}
	else if (np->scriptb_ba < dsp && 
		 dsp <= np->scriptb_ba + np->scriptb_sz) {
		script_ofs	= dsp - np->scriptb_ba;
		script_size	= np->scriptb_sz;
		script_base	= (u_char *) np->scriptb0;
		script_name	= "scriptb";
	} else {
		script_ofs	= dsp;
		script_size	= 0;
		script_base	= NULL;
		script_name	= "mem";
	}

	FUNC3 ("%s:%d: ERROR (%x:%x) (%x-%x-%x) (%x/%x/%x) @ (%s %x:%08x).\n",
		FUNC7(np), (unsigned)FUNC0(np, nc_sdid)&0x0f, dstat, sist,
		(unsigned)FUNC0(np, nc_socl), (unsigned)FUNC0(np, nc_sbcl),
		(unsigned)FUNC0(np, nc_sbdl), (unsigned)FUNC0(np, nc_sxfer),
		(unsigned)FUNC0(np, nc_scntl3),
		(np->features & FE_C10) ?  (unsigned)FUNC0(np, nc_scntl4) : 0,
		script_name, script_ofs,   (unsigned)FUNC2(np, nc_dbc));

	if (((script_ofs & 3) == 0) &&
	    (unsigned)script_ofs < script_size) {
		FUNC3 ("%s: script cmd = %08x\n", FUNC7(np),
			FUNC4((int) *(u32 *)(script_base + script_ofs)));
	}

	FUNC3("%s: regdump:", FUNC7(np));
	for (i = 0; i < 24; i++)
		FUNC3(" %02x", (unsigned)FUNC1(np, i));
	FUNC3(".\n");

	/*
	 *  PCI BUS error.
	 */
	if (dstat & (MDPE|BF))
		FUNC6(shost);
}