#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcon_link {int dummy; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_open_parms {char const* path; int reconnect; struct cifs_fid* fid; int /*<<< orphan*/  disposition; int /*<<< orphan*/  create_options; int /*<<< orphan*/  desired_access; struct cifs_sb_info* cifs_sb; struct cifs_tcon* tcon; } ;
struct cifs_io_parms {int length; scalar_t__ offset; struct cifs_tcon* tcon; int /*<<< orphan*/  pid; int /*<<< orphan*/  netfid; } ;
struct cifs_fid {int /*<<< orphan*/  netfid; } ;
struct cifs_fattr {int cf_eof; void* cf_dtype; int /*<<< orphan*/  cf_mode; void* cf_rdev; } ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  scalar_t__ __u32 ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_8__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_7__ {TYPE_2__* server; } ;
struct TYPE_6__ {TYPE_1__* ops; scalar_t__ oplocks; } ;
struct TYPE_5__ {int (* open ) (unsigned int,struct cifs_open_parms*,scalar_t__*,int /*<<< orphan*/ *) ;int (* sync_read ) (unsigned int,struct cifs_fid*,struct cifs_io_parms*,unsigned int*,char**,int*) ;int /*<<< orphan*/  (* close ) (unsigned int,struct cifs_tcon*,struct cifs_fid*) ;} ;

/* Variables and functions */
 int CIFS_NO_BUFFER ; 
 int /*<<< orphan*/  CREATE_NOT_DIR ; 
 int /*<<< orphan*/  CREATE_OPEN_BACKUP_INTENT ; 
 void* DT_BLK ; 
 void* DT_CHR ; 
 void* DT_FIFO ; 
 void* DT_LNK ; 
 void* DT_REG ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FILE_OPEN ; 
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC0 (struct tcon_link*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tcon_link*) ; 
 scalar_t__ REQ_OPLOCK ; 
 int /*<<< orphan*/  S_IFBLK ; 
 int /*<<< orphan*/  S_IFCHR ; 
 int /*<<< orphan*/  S_IFIFO ; 
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  S_IFMT ; 
 int /*<<< orphan*/  S_IFREG ; 
 scalar_t__ FUNC3 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct tcon_link*) ; 
 struct tcon_link* FUNC6 (struct cifs_sb_info*) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int FUNC9 (unsigned int,struct cifs_open_parms*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned int,struct cifs_fid*,struct cifs_io_parms*,unsigned int*,char**,int*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,struct cifs_tcon*,struct cifs_fid*) ; 
 struct cifs_tcon* FUNC12 (struct tcon_link*) ; 

__attribute__((used)) static int
FUNC13(struct cifs_fattr *fattr, const char *path,
	      struct cifs_sb_info *cifs_sb, unsigned int xid)
{
	int rc;
	__u32 oplock;
	struct tcon_link *tlink;
	struct cifs_tcon *tcon;
	struct cifs_fid fid;
	struct cifs_open_parms oparms;
	struct cifs_io_parms io_parms;
	char buf[24];
	unsigned int bytes_read;
	char *pbuf;
	int buf_type = CIFS_NO_BUFFER;

	pbuf = buf;

	fattr->cf_mode &= ~S_IFMT;

	if (fattr->cf_eof == 0) {
		fattr->cf_mode |= S_IFIFO;
		fattr->cf_dtype = DT_FIFO;
		return 0;
	} else if (fattr->cf_eof < 8) {
		fattr->cf_mode |= S_IFREG;
		fattr->cf_dtype = DT_REG;
		return -EINVAL;	 /* EOPNOTSUPP? */
	}

	tlink = FUNC6(cifs_sb);
	if (FUNC0(tlink))
		return FUNC2(tlink);
	tcon = FUNC12(tlink);

	oparms.tcon = tcon;
	oparms.cifs_sb = cifs_sb;
	oparms.desired_access = GENERIC_READ;
	oparms.create_options = CREATE_NOT_DIR;
	if (FUNC3(cifs_sb))
		oparms.create_options |= CREATE_OPEN_BACKUP_INTENT;
	oparms.disposition = FILE_OPEN;
	oparms.path = path;
	oparms.fid = &fid;
	oparms.reconnect = false;

	if (tcon->ses->server->oplocks)
		oplock = REQ_OPLOCK;
	else
		oplock = 0;
	rc = tcon->ses->server->ops->open(xid, &oparms, &oplock, NULL);
	if (rc) {
		FUNC4(FYI, "check sfu type of %s, open rc = %d\n", path, rc);
		FUNC5(tlink);
		return rc;
	}

	/* Read header */
	io_parms.netfid = fid.netfid;
	io_parms.pid = current->tgid;
	io_parms.tcon = tcon;
	io_parms.offset = 0;
	io_parms.length = 24;

	rc = tcon->ses->server->ops->sync_read(xid, &fid, &io_parms,
					&bytes_read, &pbuf, &buf_type);
	if ((rc == 0) && (bytes_read >= 8)) {
		if (FUNC8("IntxBLK", pbuf, 8) == 0) {
			FUNC4(FYI, "Block device\n");
			fattr->cf_mode |= S_IFBLK;
			fattr->cf_dtype = DT_BLK;
			if (bytes_read == 24) {
				/* we have enough to decode dev num */
				__u64 mjr; /* major */
				__u64 mnr; /* minor */
				mjr = FUNC7(*(__le64 *)(pbuf+8));
				mnr = FUNC7(*(__le64 *)(pbuf+16));
				fattr->cf_rdev = FUNC1(mjr, mnr);
			}
		} else if (FUNC8("IntxCHR", pbuf, 8) == 0) {
			FUNC4(FYI, "Char device\n");
			fattr->cf_mode |= S_IFCHR;
			fattr->cf_dtype = DT_CHR;
			if (bytes_read == 24) {
				/* we have enough to decode dev num */
				__u64 mjr; /* major */
				__u64 mnr; /* minor */
				mjr = FUNC7(*(__le64 *)(pbuf+8));
				mnr = FUNC7(*(__le64 *)(pbuf+16));
				fattr->cf_rdev = FUNC1(mjr, mnr);
			}
		} else if (FUNC8("IntxLNK", pbuf, 7) == 0) {
			FUNC4(FYI, "Symlink\n");
			fattr->cf_mode |= S_IFLNK;
			fattr->cf_dtype = DT_LNK;
		} else {
			fattr->cf_mode |= S_IFREG; /* file? */
			fattr->cf_dtype = DT_REG;
			rc = -EOPNOTSUPP;
		}
	} else {
		fattr->cf_mode |= S_IFREG; /* then it is a file */
		fattr->cf_dtype = DT_REG;
		rc = -EOPNOTSUPP; /* or some unknown SFU type */
	}

	tcon->ses->server->ops->close(xid, tcon, &fid);
	FUNC5(tlink);
	return rc;
}