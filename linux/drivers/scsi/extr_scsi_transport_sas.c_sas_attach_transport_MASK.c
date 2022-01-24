#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  match; int /*<<< orphan*/ ** attrs; int /*<<< orphan*/ * class; } ;
struct TYPE_10__ {TYPE_1__ ac; } ;
struct scsi_transport_template {int host_size; TYPE_2__ host_attrs; int /*<<< orphan*/  user_scan; } ;
struct sas_internal {struct scsi_transport_template t; int /*<<< orphan*/ ** expander_attrs; int /*<<< orphan*/ ** end_dev_attrs; int /*<<< orphan*/ ** rphy_attrs; int /*<<< orphan*/ ** port_attrs; int /*<<< orphan*/ ** phy_attrs; struct sas_function_template* f; TYPE_2__ expander_attr_cont; TYPE_2__ end_dev_attr_cont; TYPE_2__ rphy_attr_cont; TYPE_2__ port_attr_cont; TYPE_2__ phy_attr_cont; int /*<<< orphan*/ ** host_attrs; } ;
struct sas_host_attrs {int dummy; } ;
struct sas_function_template {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  class; } ;
struct TYPE_15__ {int /*<<< orphan*/  class; } ;
struct TYPE_14__ {int /*<<< orphan*/  class; } ;
struct TYPE_13__ {int /*<<< orphan*/  class; } ;
struct TYPE_12__ {int /*<<< orphan*/  class; } ;
struct TYPE_11__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  component_id ; 
 int /*<<< orphan*/  component_revision_id ; 
 int /*<<< orphan*/  component_vendor_id ; 
 int /*<<< orphan*/  device_type ; 
 int /*<<< orphan*/  enable ; 
 int /*<<< orphan*/  end_dev_I_T_nexus_loss_timeout ; 
 int /*<<< orphan*/  end_dev_initiator_response_timeout ; 
 int /*<<< orphan*/  end_dev_ready_led_meaning ; 
 int /*<<< orphan*/  end_dev_tlr_enabled ; 
 int /*<<< orphan*/  end_dev_tlr_supported ; 
 int /*<<< orphan*/  get_bay_identifier ; 
 int /*<<< orphan*/  get_enclosure_identifier ; 
 int /*<<< orphan*/  hard_reset ; 
 int /*<<< orphan*/  initiator_port_protocols ; 
 int /*<<< orphan*/  invalid_dword_count ; 
 struct sas_internal* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  level ; 
 int /*<<< orphan*/  link_reset ; 
 int /*<<< orphan*/  loss_of_dword_sync_count ; 
 int /*<<< orphan*/  maximum_linkrate ; 
 int /*<<< orphan*/  maximum_linkrate_hw ; 
 int /*<<< orphan*/  minimum_linkrate ; 
 int /*<<< orphan*/  minimum_linkrate_hw ; 
 int /*<<< orphan*/  negotiated_linkrate ; 
 int /*<<< orphan*/  num_phys ; 
 int /*<<< orphan*/  phy_enable ; 
 int /*<<< orphan*/  phy_identifier ; 
 int /*<<< orphan*/  phy_reset ; 
 int /*<<< orphan*/  phy_reset_problem_count ; 
 int /*<<< orphan*/  product_id ; 
 int /*<<< orphan*/  product_rev ; 
 int /*<<< orphan*/  rphy_bay_identifier ; 
 int /*<<< orphan*/  rphy_device_type ; 
 int /*<<< orphan*/  rphy_enclosure_identifier ; 
 int /*<<< orphan*/  rphy_initiator_port_protocols ; 
 int /*<<< orphan*/  rphy_phy_identifier ; 
 int /*<<< orphan*/  rphy_sas_address ; 
 int /*<<< orphan*/  rphy_scsi_target_id ; 
 int /*<<< orphan*/  rphy_target_port_protocols ; 
 int /*<<< orphan*/  running_disparity_error_count ; 
 int /*<<< orphan*/  sas_address ; 
 TYPE_8__ sas_end_dev_class ; 
 int /*<<< orphan*/  sas_end_dev_match ; 
 TYPE_7__ sas_expander_class ; 
 int /*<<< orphan*/  sas_expander_match ; 
 TYPE_6__ sas_host_class ; 
 int /*<<< orphan*/  sas_host_match ; 
 TYPE_5__ sas_phy_class ; 
 int /*<<< orphan*/  sas_phy_match ; 
 TYPE_4__ sas_port_class ; 
 int /*<<< orphan*/  sas_port_match ; 
 TYPE_3__ sas_rphy_class ; 
 int /*<<< orphan*/  sas_rphy_match ; 
 int /*<<< orphan*/  sas_user_scan ; 
 int /*<<< orphan*/  target_port_protocols ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  vendor_id ; 

struct scsi_transport_template *
FUNC11(struct sas_function_template *ft)
{
	struct sas_internal *i;
	int count;

	i = FUNC9(sizeof(struct sas_internal), GFP_KERNEL);
	if (!i)
		return NULL;

	i->t.user_scan = sas_user_scan;

	i->t.host_attrs.ac.attrs = &i->host_attrs[0];
	i->t.host_attrs.ac.class = &sas_host_class.class;
	i->t.host_attrs.ac.match = sas_host_match;
	FUNC10(&i->t.host_attrs);
	i->t.host_size = sizeof(struct sas_host_attrs);

	i->phy_attr_cont.ac.class = &sas_phy_class.class;
	i->phy_attr_cont.ac.attrs = &i->phy_attrs[0];
	i->phy_attr_cont.ac.match = sas_phy_match;
	FUNC10(&i->phy_attr_cont);

	i->port_attr_cont.ac.class = &sas_port_class.class;
	i->port_attr_cont.ac.attrs = &i->port_attrs[0];
	i->port_attr_cont.ac.match = sas_port_match;
	FUNC10(&i->port_attr_cont);

	i->rphy_attr_cont.ac.class = &sas_rphy_class.class;
	i->rphy_attr_cont.ac.attrs = &i->rphy_attrs[0];
	i->rphy_attr_cont.ac.match = sas_rphy_match;
	FUNC10(&i->rphy_attr_cont);

	i->end_dev_attr_cont.ac.class = &sas_end_dev_class.class;
	i->end_dev_attr_cont.ac.attrs = &i->end_dev_attrs[0];
	i->end_dev_attr_cont.ac.match = sas_end_dev_match;
	FUNC10(&i->end_dev_attr_cont);

	i->expander_attr_cont.ac.class = &sas_expander_class.class;
	i->expander_attr_cont.ac.attrs = &i->expander_attrs[0];
	i->expander_attr_cont.ac.match = sas_expander_match;
	FUNC10(&i->expander_attr_cont);

	i->f = ft;

	count = 0;
	FUNC5(initiator_port_protocols);
	FUNC5(target_port_protocols);
	FUNC5(device_type);
	FUNC5(sas_address);
	FUNC5(phy_identifier);
	FUNC5(negotiated_linkrate);
	FUNC5(minimum_linkrate_hw);
	FUNC6(minimum_linkrate);
	FUNC5(maximum_linkrate_hw);
	FUNC6(maximum_linkrate);

	FUNC5(invalid_dword_count);
	FUNC5(running_disparity_error_count);
	FUNC5(loss_of_dword_sync_count);
	FUNC5(phy_reset_problem_count);
	FUNC3(link_reset, phy_reset);
	FUNC3(hard_reset, phy_reset);
	FUNC2(enable, phy_enable);
	i->phy_attrs[count] = NULL;

	count = 0;
	FUNC7(num_phys);
	i->port_attrs[count] = NULL;

	count = 0;
	FUNC8(rphy_initiator_port_protocols);
	FUNC8(rphy_target_port_protocols);
	FUNC8(rphy_device_type);
	FUNC8(rphy_sas_address);
	FUNC8(rphy_phy_identifier);
	FUNC8(rphy_scsi_target_id);
	FUNC4(rphy_enclosure_identifier,
				       get_enclosure_identifier);
	FUNC4(rphy_bay_identifier,
				       get_bay_identifier);
	i->rphy_attrs[count] = NULL;

	count = 0;
	FUNC0(end_dev_ready_led_meaning);
	FUNC0(end_dev_I_T_nexus_loss_timeout);
	FUNC0(end_dev_initiator_response_timeout);
	FUNC0(end_dev_tlr_supported);
	FUNC0(end_dev_tlr_enabled);
	i->end_dev_attrs[count] = NULL;

	count = 0;
	FUNC1(vendor_id);
	FUNC1(product_id);
	FUNC1(product_rev);
	FUNC1(component_vendor_id);
	FUNC1(component_id);
	FUNC1(component_revision_id);
	FUNC1(level);
	i->expander_attrs[count] = NULL;

	return &i->t;
}