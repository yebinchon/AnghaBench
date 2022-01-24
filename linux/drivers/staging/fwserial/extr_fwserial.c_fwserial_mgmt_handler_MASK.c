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
struct fwtty_peer {int dummy; } ;
struct fwserial_mgmt_pkt {int dummy; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 int RCODE_CONFLICT_ERROR ; 
 int RCODE_TYPE_ERROR ; 
#define  TCODE_WRITE_BLOCK_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (struct fw_card*) ; 
 struct fwtty_peer* FUNC1 (struct fw_card*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_card*,struct fw_request*,int) ; 
 int FUNC3 (struct fwtty_peer*,struct fwserial_mgmt_pkt*,unsigned long long,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_card*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct fw_card *card,
				  struct fw_request *request,
				  int tcode, int destination, int source,
				  int generation,
				  unsigned long long addr,
				  void *data, size_t len,
				  void *callback_data)
{
	struct fwserial_mgmt_pkt *pkt = data;
	struct fwtty_peer *peer;
	int rcode;

	FUNC5();
	peer = FUNC1(card, generation, source);
	if (!peer) {
		FUNC4(card, "peer(%d:%x) not found\n", generation, source);
		FUNC0(card);
		rcode = RCODE_CONFLICT_ERROR;

	} else {
		switch (tcode) {
		case TCODE_WRITE_BLOCK_REQUEST:
			rcode = FUNC3(peer, pkt, addr, len);
			break;

		default:
			rcode = RCODE_TYPE_ERROR;
		}
	}

	FUNC6();
	FUNC2(card, request, rcode);
}