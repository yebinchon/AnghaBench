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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  bport; } ;
struct TYPE_5__ {TYPE_4__ fabric; } ;
struct bfad_s {TYPE_1__ bfa_fcs; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct TYPE_6__ {int /*<<< orphan*/  symname; } ;
struct TYPE_7__ {TYPE_2__ sym_name; } ;
struct bfa_lport_attr_s {TYPE_3__ port_cfg; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int BFA_SYMNAME_MAXLEN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfa_lport_attr_s*) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
				 char *buf)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_s *bfad = im_port->bfad;
	struct bfa_lport_attr_s port_attr;
	char symname[BFA_SYMNAME_MAXLEN];

	FUNC0(&bfad->bfa_fcs.fabric.bport, &port_attr);
	FUNC3(symname, port_attr.port_cfg.sym_name.symname,
			BFA_SYMNAME_MAXLEN);
	return FUNC2(buf, PAGE_SIZE, "%s\n", symname);
}