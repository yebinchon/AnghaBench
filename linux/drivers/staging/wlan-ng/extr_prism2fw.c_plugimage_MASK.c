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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct s3plugrec {scalar_t__ addr; int len; int itemcode; } ;
struct pda {int nrec; TYPE_1__** rec; } ;
struct imgchunk {scalar_t__ addr; scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRISM2_USB_FWFILE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,scalar_t__,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct imgchunk *fchunk, unsigned int nfchunks,
		     struct s3plugrec *s3plug, unsigned int ns3plug,
		     struct pda *pda)
{
	int result = 0;
	int i;			/* plug index */
	int j;			/* index of PDR or -1 if fname plug */
	int c;			/* chunk index */
	u32 pstart;
	u32 pend;
	u32 cstart = 0;
	u32 cend;
	u32 chunkoff;
	u8 *dest;

	/* for each plug record */
	for (i = 0; i < ns3plug; i++) {
		pstart = s3plug[i].addr;
		pend = s3plug[i].addr + s3plug[i].len;
		/* find the matching PDR (or filename) */
		if (s3plug[i].itemcode != 0xffffffffUL) { /* not filename */
			for (j = 0; j < pda->nrec; j++) {
				if (s3plug[i].itemcode ==
				    FUNC0(pda->rec[j]->code))
					break;
			}
		} else {
			j = -1;
		}
		if (j >= pda->nrec && j != -1) { /*  if no matching PDR, fail */
			FUNC5("warning: Failed to find PDR for plugrec 0x%04x.\n",
				s3plug[i].itemcode);
			continue;	/* and move on to the next PDR */

			/* MSM: They swear that unless it's the MAC address,
			 * the serial number, or the TX calibration records,
			 * then there's reasonable defaults in the f/w
			 * image.  Therefore, missing PDRs in the card
			 * should only be a warning, not fatal.
			 * TODO: add fatals for the PDRs mentioned above.
			 */
		}

		/* Validate plug len against PDR len */
		if (j != -1 && s3plug[i].len < FUNC0(pda->rec[j]->len)) {
			FUNC4("error: Plug vs. PDR len mismatch for plugrec 0x%04x, abort plugging.\n",
			       s3plug[i].itemcode);
			result = 1;
			continue;
		}

		/*
		 * Validate plug address against
		 * chunk data and identify chunk
		 */
		for (c = 0; c < nfchunks; c++) {
			cstart = fchunk[c].addr;
			cend = fchunk[c].addr + fchunk[c].len;
			if (pstart >= cstart && pend <= cend)
				break;
		}
		if (c >= nfchunks) {
			FUNC4("error: Failed to find image chunk for plugrec 0x%04x.\n",
			       s3plug[i].itemcode);
			result = 1;
			continue;
		}

		/* Plug data */
		chunkoff = pstart - cstart;
		dest = fchunk[c].data + chunkoff;
		FUNC3("Plugging item 0x%04x @ 0x%06x, len=%d, cnum=%d coff=0x%06x\n",
			 s3plug[i].itemcode, pstart, s3plug[i].len,
			 c, chunkoff);

		if (j == -1) {	/* plug the filename */
			FUNC2(dest, 0, s3plug[i].len);
			FUNC6(dest, PRISM2_USB_FWFILE, s3plug[i].len - 1);
		} else {	/* plug a PDR */
			FUNC1(dest, &pda->rec[j]->data, s3plug[i].len);
		}
	}
	return result;
}