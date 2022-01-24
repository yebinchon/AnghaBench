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
typedef  int /*<<< orphan*/  u64 ;
struct se_wwn {int dummy; } ;
struct vhost_scsi_tport {struct se_wwn tport_wwn; int /*<<< orphan*/ * tport_name; int /*<<< orphan*/  tport_proto_id; int /*<<< orphan*/  tport_wwpn; } ;
struct target_fabric_configfs {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct se_wwn* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCSI_PROTOCOL_FCP ; 
 int /*<<< orphan*/  SCSI_PROTOCOL_ISCSI ; 
 int /*<<< orphan*/  SCSI_PROTOCOL_SAS ; 
 scalar_t__ VHOST_SCSI_NAMELEN ; 
 int /*<<< orphan*/  FUNC1 (struct vhost_scsi_tport*) ; 
 struct vhost_scsi_tport* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct vhost_scsi_tport*) ; 

__attribute__((used)) static struct se_wwn *
FUNC9(struct target_fabric_configfs *tf,
		     struct config_group *group,
		     const char *name)
{
	struct vhost_scsi_tport *tport;
	char *ptr;
	u64 wwpn = 0;
	int off = 0;

	/* if (vhost_scsi_parse_wwn(name, &wwpn, 1) < 0)
		return ERR_PTR(-EINVAL); */

	tport = FUNC2(sizeof(*tport), GFP_KERNEL);
	if (!tport) {
		FUNC4("Unable to allocate struct vhost_scsi_tport");
		return FUNC0(-ENOMEM);
	}
	tport->tport_wwpn = wwpn;
	/*
	 * Determine the emulated Protocol Identifier and Target Port Name
	 * based on the incoming configfs directory name.
	 */
	ptr = FUNC7(name, "naa.");
	if (ptr) {
		tport->tport_proto_id = SCSI_PROTOCOL_SAS;
		goto check_len;
	}
	ptr = FUNC7(name, "fc.");
	if (ptr) {
		tport->tport_proto_id = SCSI_PROTOCOL_FCP;
		off = 3; /* Skip over "fc." */
		goto check_len;
	}
	ptr = FUNC7(name, "iqn.");
	if (ptr) {
		tport->tport_proto_id = SCSI_PROTOCOL_ISCSI;
		goto check_len;
	}

	FUNC4("Unable to locate prefix for emulated Target Port:"
			" %s\n", name);
	FUNC1(tport);
	return FUNC0(-EINVAL);

check_len:
	if (FUNC6(name) >= VHOST_SCSI_NAMELEN) {
		FUNC4("Emulated %s Address: %s, exceeds"
			" max: %d\n", name, FUNC8(tport),
			VHOST_SCSI_NAMELEN);
		FUNC1(tport);
		return FUNC0(-EINVAL);
	}
	FUNC5(&tport->tport_name[0], VHOST_SCSI_NAMELEN, "%s", &name[off]);

	FUNC3("TCM_VHost_ConfigFS: Allocated emulated Target"
		" %s Address: %s\n", FUNC8(tport), name);

	return &tport->tport_wwn;
}