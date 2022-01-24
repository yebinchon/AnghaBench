#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int TupleCode; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  DesiredTuple; } ;
typedef  TYPE_1__ tuple_t ;
struct pcmcia_socket {int state; int /*<<< orphan*/  ops_mutex; int /*<<< orphan*/  dev; scalar_t__ functions; } ;
typedef  TYPE_1__ cisparse_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIND_FN_ALL ; 
 int /*<<< orphan*/  CISTPL_CFTABLE_ENTRY ; 
 int /*<<< orphan*/  CISTPL_CFTABLE_ENTRY_CB ; 
 int CISTPL_DEVICE ; 
 int /*<<< orphan*/  CISTPL_MANFID ; 
 int /*<<< orphan*/  CISTPL_VERS_1 ; 
 int /*<<< orphan*/  CISTPL_VERS_2 ; 
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int MAX_TUPLES ; 
 int /*<<< orphan*/  RETURN_FIRST_TUPLE ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  TUPLE_RETURN_COMMON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pcmcia_socket*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (struct pcmcia_socket*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC10(struct pcmcia_socket *s, unsigned int *info)
{
	tuple_t *tuple;
	cisparse_t *p;
	unsigned int count = 0;
	int ret, reserved, dev_ok = 0, ident_ok = 0;

	if (!s)
		return -EINVAL;

	if (s->functions || !(s->state & SOCKET_PRESENT)) {
		FUNC0(1);
		return -EINVAL;
	}

	/* We do not want to validate the CIS cache... */
	FUNC5(&s->ops_mutex);
	FUNC1(s);
	FUNC6(&s->ops_mutex);

	tuple = FUNC4(sizeof(*tuple), GFP_KERNEL);
	if (tuple == NULL) {
		FUNC2(&s->dev, "no memory to validate CIS\n");
		return -ENOMEM;
	}
	p = FUNC4(sizeof(*p), GFP_KERNEL);
	if (p == NULL) {
		FUNC3(tuple);
		FUNC2(&s->dev, "no memory to validate CIS\n");
		return -ENOMEM;
	}

	count = reserved = 0;
	tuple->DesiredTuple = RETURN_FIRST_TUPLE;
	tuple->Attributes = TUPLE_RETURN_COMMON;
	ret = FUNC7(s, BIND_FN_ALL, tuple);
	if (ret != 0)
		goto done;

	/* First tuple should be DEVICE; we should really have either that
	   or a CFTABLE_ENTRY of some sort */
	if ((tuple->TupleCode == CISTPL_DEVICE) ||
	    (!FUNC9(s, BIND_FN_ALL, CISTPL_CFTABLE_ENTRY, p)) ||
	    (!FUNC9(s, BIND_FN_ALL, CISTPL_CFTABLE_ENTRY_CB, p)))
		dev_ok++;

	/* All cards should have a MANFID tuple, and/or a VERS_1 or VERS_2
	   tuple, for card identification.  Certain old D-Link and Linksys
	   cards have only a broken VERS_2 tuple; hence the bogus test. */
	if ((FUNC9(s, BIND_FN_ALL, CISTPL_MANFID, p) == 0) ||
	    (FUNC9(s, BIND_FN_ALL, CISTPL_VERS_1, p) == 0) ||
	    (FUNC9(s, BIND_FN_ALL, CISTPL_VERS_2, p) != -ENOSPC))
		ident_ok++;

	if (!dev_ok && !ident_ok)
		goto done;

	for (count = 1; count < MAX_TUPLES; count++) {
		ret = FUNC8(s, BIND_FN_ALL, tuple);
		if (ret != 0)
			break;
		if (((tuple->TupleCode > 0x23) && (tuple->TupleCode < 0x40)) ||
		    ((tuple->TupleCode > 0x47) && (tuple->TupleCode < 0x80)) ||
		    ((tuple->TupleCode > 0x90) && (tuple->TupleCode < 0xff)))
			reserved++;
	}
	if ((count == MAX_TUPLES) || (reserved > 5) ||
		((!dev_ok || !ident_ok) && (count > 10)))
		count = 0;

	ret = 0;

done:
	/* invalidate CIS cache on failure */
	if (!dev_ok || !ident_ok || !count) {
		FUNC5(&s->ops_mutex);
		FUNC1(s);
		FUNC6(&s->ops_mutex);
		/* We differentiate between dev_ok, ident_ok and count
		   failures to allow for an override for anonymous cards
		   in ds.c */
		if (!dev_ok || !ident_ok)
			ret = -EIO;
		else
			ret = -EFAULT;
	}

	if (info)
		*info = count;
	FUNC3(tuple);
	FUNC3(p);
	return ret;
}