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
struct fwtty_port {int dummy; } ;

/* Variables and functions */
#define  RCODE_ADDRESS_ERROR 132 
#define  RCODE_BUSY 131 
#define  RCODE_DATA_ERROR 130 
#define  RCODE_NO_ACK 129 
#define  RCODE_SEND_ERROR 128 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct fwtty_port *port, int rcode)
{
	switch (rcode) {
	case RCODE_SEND_ERROR:
		FUNC0(port, "card busy\n");
		break;
	case RCODE_ADDRESS_ERROR:
		FUNC0(port, "bad unit addr or write length\n");
		break;
	case RCODE_DATA_ERROR:
		FUNC0(port, "failed rx\n");
		break;
	case RCODE_NO_ACK:
		FUNC0(port, "missing ack\n");
		break;
	case RCODE_BUSY:
		FUNC0(port, "remote busy\n");
		break;
	default:
		FUNC0(port, "failed tx: %d\n", rcode);
	}
}