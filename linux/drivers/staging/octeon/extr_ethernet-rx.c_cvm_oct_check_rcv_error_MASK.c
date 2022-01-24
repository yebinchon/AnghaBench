#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ pre_chk; } ;
union cvmx_gmxx_rxx_frm_ctl {TYPE_5__ s; int /*<<< orphan*/  u64; } ;
typedef  int u8 ;
struct TYPE_24__ {int err_code; } ;
struct TYPE_14__ {TYPE_9__ snoip; } ;
struct TYPE_19__ {int ipprt; } ;
struct TYPE_23__ {int len; TYPE_4__ cn38xx; } ;
struct TYPE_21__ {int addr; } ;
struct TYPE_22__ {TYPE_6__ s; } ;
struct TYPE_16__ {int pknd; } ;
struct TYPE_17__ {TYPE_1__ cn68xx; } ;
struct TYPE_18__ {TYPE_2__ pip; } ;
struct TYPE_15__ {TYPE_10__ word2; TYPE_8__ word1; TYPE_7__ packet_ptr; TYPE_3__ word0; } ;
typedef  TYPE_11__ cvmx_wqe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  OCTEON_FEATURE_PKND ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 

__attribute__((used)) static inline int FUNC8(cvmx_wqe_t *work)
{
	int port;

	if (FUNC6(OCTEON_FEATURE_PKND))
		port = work->word0.pip.cn68xx.pknd;
	else
		port = work->word1.cn38xx.ipprt;

	if ((work->word2.snoip.err_code == 10) && (work->word1.len <= 64)) {
		/*
		 * Ignore length errors on min size packets. Some
		 * equipment incorrectly pads packets to 64+4FCS
		 * instead of 60+4FCS.  Note these packets still get
		 * counted as frame errors.
		 */
	} else if (work->word2.snoip.err_code == 5 ||
		   work->word2.snoip.err_code == 7) {
		/*
		 * We received a packet with either an alignment error
		 * or a FCS error. This may be signalling that we are
		 * running 10Mbps with GMXX_RXX_FRM_CTL[PRE_CHK]
		 * off. If this is the case we need to parse the
		 * packet to determine if we can remove a non spec
		 * preamble and generate a correct packet.
		 */
		int interface = FUNC3(port);
		int index = FUNC2(port);
		union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;

		gmxx_rxx_frm_ctl.u64 =
		    FUNC5(FUNC0(index, interface));
		if (gmxx_rxx_frm_ctl.s.pre_chk == 0) {
			u8 *ptr =
			    FUNC4(work->packet_ptr.s.addr);
			int i = 0;

			while (i < work->word1.len - 1) {
				if (*ptr != 0x55)
					break;
				ptr++;
				i++;
			}

			if (*ptr == 0xd5) {
				/* Port received 0xd5 preamble */
				work->packet_ptr.s.addr += i + 1;
				work->word1.len -= i + 5;
			} else if ((*ptr & 0xf) == 0xd) {
				/* Port received 0xd preamble */
				work->packet_ptr.s.addr += i;
				work->word1.len -= i + 4;
				for (i = 0; i < work->word1.len; i++) {
					*ptr =
					    ((*ptr & 0xf0) >> 4) |
					    ((*(ptr + 1) & 0xf) << 4);
					ptr++;
				}
			} else {
				FUNC7("Port %d unknown preamble, packet dropped\n",
						   port);
				FUNC1(work);
				return 1;
			}
		}
	} else {
		FUNC7("Port %d receive error code %d, packet dropped\n",
				   port, work->word2.snoip.err_code);
		FUNC1(work);
		return 1;
	}

	return 0;
}