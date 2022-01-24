#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct afs_vlserver_list {int nr_servers; TYPE_1__* servers; } ;
struct afs_net {int dummy; } ;
struct afs_addr_list {int /*<<< orphan*/  nr_addrs; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  addresses; } ;
struct TYPE_3__ {TYPE_2__* server; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_MAX_ADDRESSES ; 
 int /*<<< orphan*/  AFS_VL_PORT ; 
 int AF_INET ; 
 int AF_INET6 ; 
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct afs_vlserver_list* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct afs_addr_list* FUNC4 (unsigned int,unsigned short,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 struct afs_vlserver_list* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_addr_list*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct afs_addr_list*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct afs_addr_list*) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_net*,struct afs_vlserver_list*) ; 
 scalar_t__ FUNC11 (char const*,int,int /*<<< orphan*/ *,int,char const**) ; 
 scalar_t__ FUNC12 (char const*,int,int /*<<< orphan*/ *,int,char const**) ; 
 scalar_t__ FUNC13 (char const) ; 
 char* FUNC14 (char const*,char,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct afs_addr_list*) ; 

struct afs_vlserver_list *FUNC16(struct afs_net *net,
					       const char *text, size_t len,
					       char delim,
					       unsigned short service,
					       unsigned short port)
{
	struct afs_vlserver_list *vllist;
	struct afs_addr_list *alist;
	const char *p, *end = text + len;
	const char *problem;
	unsigned int nr = 0;
	int ret = -ENOMEM;

	FUNC2("%*.*s,%c", (int)len, (int)len, text, delim);

	if (!len) {
		FUNC3(" = -EDESTADDRREQ [empty]");
		return FUNC0(-EDESTADDRREQ);
	}

	if (delim == ':' && (FUNC14(text, ',', len) || !FUNC14(text, '.', len)))
		delim = ',';

	/* Count the addresses */
	p = text;
	do {
		if (!*p) {
			problem = "nul";
			goto inval;
		}
		if (*p == delim)
			continue;
		nr++;
		if (*p == '[') {
			p++;
			if (p == end) {
				problem = "brace1";
				goto inval;
			}
			p = FUNC14(p, ']', end - p);
			if (!p) {
				problem = "brace2";
				goto inval;
			}
			p++;
			if (p >= end)
				break;
		}

		p = FUNC14(p, delim, end - p);
		if (!p)
			break;
		p++;
	} while (p < end);

	FUNC1("%u/%u addresses", nr, AFS_MAX_ADDRESSES);

	vllist = FUNC6(1);
	if (!vllist)
		return FUNC0(-ENOMEM);

	vllist->nr_servers = 1;
	vllist->servers[0].server = FUNC5("<dummy>", 7, AFS_VL_PORT);
	if (!vllist->servers[0].server)
		goto error_vl;

	alist = FUNC4(nr, service, AFS_VL_PORT);
	if (!alist)
		goto error;

	/* Extract the addresses */
	p = text;
	do {
		const char *q, *stop;
		unsigned int xport = port;
		__be32 x[4];
		int family;

		if (*p == delim) {
			p++;
			continue;
		}

		if (*p == '[') {
			p++;
			q = FUNC14(p, ']', end - p);
		} else {
			for (q = p; q < end; q++)
				if (*q == '+' || *q == delim)
					break;
		}

		if (FUNC11(p, q - p, (u8 *)&x[0], -1, &stop)) {
			family = AF_INET;
		} else if (FUNC12(p, q - p, (u8 *)x, -1, &stop)) {
			family = AF_INET6;
		} else {
			problem = "family";
			goto bad_address;
		}

		p = q;
		if (stop != p) {
			problem = "nostop";
			goto bad_address;
		}

		if (q < end && *q == ']')
			p++;

		if (p < end) {
			if (*p == '+') {
				/* Port number specification "+1234" */
				xport = 0;
				p++;
				if (p >= end || !FUNC13(*p)) {
					problem = "port";
					goto bad_address;
				}
				do {
					xport *= 10;
					xport += *p - '0';
					if (xport > 65535) {
						problem = "pval";
						goto bad_address;
					}
					p++;
				} while (p < end && FUNC13(*p));
			} else if (*p == delim) {
				p++;
			} else {
				problem = "weird";
				goto bad_address;
			}
		}

		if (family == AF_INET)
			FUNC7(alist, x[0], xport);
		else
			FUNC8(alist, x, xport);

	} while (p < end);

	FUNC15(vllist->servers[0].server->addresses, alist);
	FUNC3(" = [nr %u]", alist->nr_addrs);
	return vllist;

inval:
	FUNC3(" = -EINVAL [%s %zu %*.*s]",
	       problem, p - text, (int)len, (int)len, text);
	return FUNC0(-EINVAL);
bad_address:
	FUNC3(" = -EINVAL [%s %zu %*.*s]",
	       problem, p - text, (int)len, (int)len, text);
	ret = -EINVAL;
error:
	FUNC9(alist);
error_vl:
	FUNC10(net, vllist);
	return FUNC0(ret);
}