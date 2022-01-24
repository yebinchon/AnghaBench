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
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  u8 ;
struct pkt_file {scalar_t__ buf_len; scalar_t__ pkt_len; int /*<<< orphan*/  cur_addr; int /*<<< orphan*/  pkt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pkt_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 

uint FUNC2 (struct pkt_file *pfile, u8 *rmem, uint rlen)
{
	uint	len = 0;

	len =  FUNC0(pfile);
	len = (rlen > len) ? len : rlen;

	if (rmem)
		FUNC1(pfile->pkt, pfile->buf_len - pfile->pkt_len, rmem, len);

	pfile->cur_addr += len;
	pfile->pkt_len -= len;
	return len;
}