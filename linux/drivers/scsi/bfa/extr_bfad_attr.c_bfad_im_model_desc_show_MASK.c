#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioc; } ;
struct bfad_s {TYPE_1__ bfa; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int BFA_ADAPTER_MODEL_DESCR_LEN ; 
 int BFA_ADAPTER_MODEL_NAME_LEN ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct Scsi_Host* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev, struct device_attribute *attr,
				 char *buf)
{
	struct Scsi_Host *shost = FUNC3(dev);
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_s *bfad = im_port->bfad;
	char model[BFA_ADAPTER_MODEL_NAME_LEN];
	char model_descr[BFA_ADAPTER_MODEL_DESCR_LEN];
	int nports = 0;

	FUNC0(&bfad->bfa, model);
	nports = FUNC1(&bfad->bfa);
	if (!FUNC5(model, "QLogic-425"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 4Gbps PCIe dual port FC HBA");
	else if (!FUNC5(model, "QLogic-825"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 8Gbps PCIe dual port FC HBA");
	else if (!FUNC5(model, "QLogic-42B"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 4Gbps PCIe dual port FC HBA for HP");
	else if (!FUNC5(model, "QLogic-82B"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 8Gbps PCIe dual port FC HBA for HP");
	else if (!FUNC5(model, "QLogic-1010"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 10Gbps single port CNA");
	else if (!FUNC5(model, "QLogic-1020"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 10Gbps dual port CNA");
	else if (!FUNC5(model, "QLogic-1007"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 10Gbps CNA for IBM Blade Center");
	else if (!FUNC5(model, "QLogic-415"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 4Gbps PCIe single port FC HBA");
	else if (!FUNC5(model, "QLogic-815"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 8Gbps PCIe single port FC HBA");
	else if (!FUNC5(model, "QLogic-41B"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 4Gbps PCIe single port FC HBA for HP");
	else if (!FUNC5(model, "QLogic-81B"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 8Gbps PCIe single port FC HBA for HP");
	else if (!FUNC5(model, "QLogic-804"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 8Gbps FC HBA for HP Bladesystem C-class");
	else if (!FUNC5(model, "QLogic-1741"))
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"QLogic BR-series 10Gbps CNA for Dell M-Series Blade Servers");
	else if (FUNC6(model, "QLogic-1860")) {
		if (nports == 1 && FUNC2(&bfad->bfa.ioc))
			FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
				"QLogic BR-series 10Gbps single port CNA");
		else if (nports == 1 && !FUNC2(&bfad->bfa.ioc))
			FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
				"QLogic BR-series 16Gbps PCIe single port FC HBA");
		else if (nports == 2 && FUNC2(&bfad->bfa.ioc))
			FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
				"QLogic BR-series 10Gbps dual port CNA");
		else if (nports == 2 && !FUNC2(&bfad->bfa.ioc))
			FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
				"QLogic BR-series 16Gbps PCIe dual port FC HBA");
	} else if (!FUNC5(model, "QLogic-1867")) {
		if (nports == 1 && !FUNC2(&bfad->bfa.ioc))
			FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
				"QLogic BR-series 16Gbps PCIe single port FC HBA for IBM");
		else if (nports == 2 && !FUNC2(&bfad->bfa.ioc))
			FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
				"QLogic BR-series 16Gbps PCIe dual port FC HBA for IBM");
	} else
		FUNC4(model_descr, BFA_ADAPTER_MODEL_DESCR_LEN,
			"Invalid Model");

	return FUNC4(buf, PAGE_SIZE, "%s\n", model_descr);
}