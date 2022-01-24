#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct ceph_options {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {void* iov_base; int iov_len; } ;
struct TYPE_8__ {void* front_len; void* compat_version; void* version; } ;
struct ceph_msg {TYPE_4__ front; TYPE_3__ hdr; } ;
struct ceph_mount_options {int /*<<< orphan*/  server_path; } ;
struct ceph_mds_session_head {int /*<<< orphan*/  seq; void* op; } ;
struct ceph_mds_client {char* nodename; TYPE_2__* fsc; } ;
struct TYPE_10__ {char* release; } ;
struct TYPE_7__ {struct ceph_mount_options* mount_options; TYPE_1__* client; } ;
struct TYPE_6__ {struct ceph_options* options; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MSG_CLIENT_SESSION ; 
 int CEPH_SESSION_REQUEST_OPEN ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (void**,size_t const) ; 
 struct ceph_msg* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,void*) ; 
 TYPE_5__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*,char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static struct ceph_msg *FUNC10(struct ceph_mds_client *mdsc, u64 seq)
{
	struct ceph_msg *msg;
	struct ceph_mds_session_head *h;
	int i = -1;
	int extra_bytes = 0;
	int metadata_key_count = 0;
	struct ceph_options *opt = mdsc->fsc->client->options;
	struct ceph_mount_options *fsopt = mdsc->fsc->mount_options;
	void *p, *end;

	const char* metadata[][2] = {
		{"hostname", mdsc->nodename},
		{"kernel_version", FUNC6()->release},
		{"entity_id", opt->name ? : ""},
		{"root", fsopt->server_path ? : "/"},
		{NULL, NULL}
	};

	/* Calculate serialized length of metadata */
	extra_bytes = 4;  /* map length */
	for (i = 0; metadata[i][0]; ++i) {
		extra_bytes += 8 + FUNC9(metadata[i][0]) +
			FUNC9(metadata[i][1]);
		metadata_key_count++;
	}
	/* supported feature */
	extra_bytes += 4 + 8;

	/* Allocate the message */
	msg = FUNC1(CEPH_MSG_CLIENT_SESSION, sizeof(*h) + extra_bytes,
			   GFP_NOFS, false);
	if (!msg) {
		FUNC8("create_session_msg ENOMEM creating msg\n");
		return NULL;
	}
	p = msg->front.iov_base;
	end = p + msg->front.iov_len;

	h = p;
	h->op = FUNC3(CEPH_SESSION_REQUEST_OPEN);
	h->seq = FUNC4(seq);

	/*
	 * Serialize client metadata into waiting buffer space, using
	 * the format that userspace expects for map<string, string>
	 *
	 * ClientSession messages with metadata are v2
	 */
	msg->hdr.version = FUNC2(3);
	msg->hdr.compat_version = FUNC2(1);

	/* The write pointer, following the session_head structure */
	p += sizeof(*h);

	/* Number of entries in the map */
	FUNC0(&p, metadata_key_count);

	/* Two length-prefixed strings for each entry in the map */
	for (i = 0; metadata[i][0]; ++i) {
		size_t const key_len = FUNC9(metadata[i][0]);
		size_t const val_len = FUNC9(metadata[i][1]);

		FUNC0(&p, key_len);
		FUNC7(p, metadata[i][0], key_len);
		p += key_len;
		FUNC0(&p, val_len);
		FUNC7(p, metadata[i][1], val_len);
		p += val_len;
	}

	FUNC5(&p, end);
	msg->front.iov_len = p - msg->front.iov_base;
	msg->hdr.front_len = FUNC3(msg->front.iov_len);

	return msg;
}