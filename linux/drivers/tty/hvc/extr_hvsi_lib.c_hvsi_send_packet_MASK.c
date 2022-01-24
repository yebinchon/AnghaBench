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
struct hvsi_priv {int (* put_chars ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  termno; int /*<<< orphan*/  seqno; } ;
struct hvsi_header {int /*<<< orphan*/  len; int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hvsi_priv *pv, struct hvsi_header *packet)
{
	packet->seqno = FUNC1(FUNC0(&pv->seqno));

	/* Assumes that always succeeds, works in practice */
	return pv->put_chars(pv->termno, (char *)packet, packet->len);
}