; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_attach_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_sas.c_sas_attach_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.scsi_transport_template = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32**, i32* }
%struct.sas_function_template = type { i32 }
%struct.sas_internal = type { %struct.scsi_transport_template, i32**, i32**, i32**, i32**, i32**, %struct.sas_function_template*, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, i32** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sas_user_scan = common dso_local global i32 0, align 4
@sas_host_class = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@sas_host_match = common dso_local global i32 0, align 4
@sas_phy_class = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@sas_phy_match = common dso_local global i32 0, align 4
@sas_port_class = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@sas_port_match = common dso_local global i32 0, align 4
@sas_rphy_class = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@sas_rphy_match = common dso_local global i32 0, align 4
@sas_end_dev_class = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@sas_end_dev_match = common dso_local global i32 0, align 4
@sas_expander_class = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@sas_expander_match = common dso_local global i32 0, align 4
@initiator_port_protocols = common dso_local global i32 0, align 4
@target_port_protocols = common dso_local global i32 0, align 4
@device_type = common dso_local global i32 0, align 4
@sas_address = common dso_local global i32 0, align 4
@phy_identifier = common dso_local global i32 0, align 4
@negotiated_linkrate = common dso_local global i32 0, align 4
@minimum_linkrate_hw = common dso_local global i32 0, align 4
@minimum_linkrate = common dso_local global i32 0, align 4
@maximum_linkrate_hw = common dso_local global i32 0, align 4
@maximum_linkrate = common dso_local global i32 0, align 4
@invalid_dword_count = common dso_local global i32 0, align 4
@running_disparity_error_count = common dso_local global i32 0, align 4
@loss_of_dword_sync_count = common dso_local global i32 0, align 4
@phy_reset_problem_count = common dso_local global i32 0, align 4
@link_reset = common dso_local global i32 0, align 4
@phy_reset = common dso_local global i32 0, align 4
@hard_reset = common dso_local global i32 0, align 4
@enable = common dso_local global i32 0, align 4
@phy_enable = common dso_local global i32 0, align 4
@num_phys = common dso_local global i32 0, align 4
@rphy_initiator_port_protocols = common dso_local global i32 0, align 4
@rphy_target_port_protocols = common dso_local global i32 0, align 4
@rphy_device_type = common dso_local global i32 0, align 4
@rphy_sas_address = common dso_local global i32 0, align 4
@rphy_phy_identifier = common dso_local global i32 0, align 4
@rphy_scsi_target_id = common dso_local global i32 0, align 4
@rphy_enclosure_identifier = common dso_local global i32 0, align 4
@get_enclosure_identifier = common dso_local global i32 0, align 4
@rphy_bay_identifier = common dso_local global i32 0, align 4
@get_bay_identifier = common dso_local global i32 0, align 4
@end_dev_ready_led_meaning = common dso_local global i32 0, align 4
@end_dev_I_T_nexus_loss_timeout = common dso_local global i32 0, align 4
@end_dev_initiator_response_timeout = common dso_local global i32 0, align 4
@end_dev_tlr_supported = common dso_local global i32 0, align 4
@end_dev_tlr_enabled = common dso_local global i32 0, align 4
@vendor_id = common dso_local global i32 0, align 4
@product_id = common dso_local global i32 0, align 4
@product_rev = common dso_local global i32 0, align 4
@component_vendor_id = common dso_local global i32 0, align 4
@component_id = common dso_local global i32 0, align 4
@component_revision_id = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_transport_template* @sas_attach_transport(%struct.sas_function_template* %0) #0 {
  %2 = alloca %struct.scsi_transport_template*, align 8
  %3 = alloca %struct.sas_function_template*, align 8
  %4 = alloca %struct.sas_internal*, align 8
  %5 = alloca i32, align 4
  store %struct.sas_function_template* %0, %struct.sas_function_template** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.sas_internal* @kzalloc(i32 216, i32 %6)
  store %struct.sas_internal* %7, %struct.sas_internal** %4, align 8
  %8 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %9 = icmp ne %struct.sas_internal* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.scsi_transport_template* null, %struct.scsi_transport_template** %2, align 8
  br label %259

11:                                               ; preds = %1
  %12 = load i32, i32* @sas_user_scan, align 4
  %13 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %14 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %17 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %16, i32 0, i32 12
  %18 = load i32**, i32*** %17, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %21 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32** %19, i32*** %24, align 8
  %25 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %26 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sas_host_class, i32 0, i32 0), i32** %29, align 8
  %30 = load i32, i32* @sas_host_match, align 4
  %31 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %32 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 8
  %36 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %37 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %37, i32 0, i32 1
  %39 = call i32 @transport_container_register(%struct.TYPE_10__* %38)
  %40 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %41 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.scsi_transport_template, %struct.scsi_transport_template* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %44 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sas_phy_class, i32 0, i32 0), i32** %46, align 8
  %47 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %48 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %47, i32 0, i32 5
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %52 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i32** %50, i32*** %54, align 8
  %55 = load i32, i32* @sas_phy_match, align 4
  %56 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %57 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %56, i32 0, i32 11
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %61 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %60, i32 0, i32 11
  %62 = call i32 @transport_container_register(%struct.TYPE_10__* %61)
  %63 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %64 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sas_port_class, i32 0, i32 0), i32** %66, align 8
  %67 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %68 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %67, i32 0, i32 4
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %72 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %71, i32 0, i32 10
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32** %70, i32*** %74, align 8
  %75 = load i32, i32* @sas_port_match, align 4
  %76 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %77 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %81 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %80, i32 0, i32 10
  %82 = call i32 @transport_container_register(%struct.TYPE_10__* %81)
  %83 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %84 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sas_rphy_class, i32 0, i32 0), i32** %86, align 8
  %87 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %88 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %87, i32 0, i32 3
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  %91 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %92 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i32** %90, i32*** %94, align 8
  %95 = load i32, i32* @sas_rphy_match, align 4
  %96 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %97 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  %100 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %101 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %100, i32 0, i32 9
  %102 = call i32 @transport_container_register(%struct.TYPE_10__* %101)
  %103 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %104 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sas_end_dev_class, i32 0, i32 0), i32** %106, align 8
  %107 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %108 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %107, i32 0, i32 2
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %112 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store i32** %110, i32*** %114, align 8
  %115 = load i32, i32* @sas_end_dev_match, align 4
  %116 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %117 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 8
  %120 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %121 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %120, i32 0, i32 8
  %122 = call i32 @transport_container_register(%struct.TYPE_10__* %121)
  %123 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %124 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sas_expander_class, i32 0, i32 0), i32** %126, align 8
  %127 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %128 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  %131 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %132 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32** %130, i32*** %134, align 8
  %135 = load i32, i32* @sas_expander_match, align 4
  %136 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %137 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 8
  %140 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %141 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %140, i32 0, i32 7
  %142 = call i32 @transport_container_register(%struct.TYPE_10__* %141)
  %143 = load %struct.sas_function_template*, %struct.sas_function_template** %3, align 8
  %144 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %145 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %144, i32 0, i32 6
  store %struct.sas_function_template* %143, %struct.sas_function_template** %145, align 8
  store i32 0, i32* %5, align 4
  %146 = load i32, i32* @initiator_port_protocols, align 4
  %147 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %146)
  %148 = load i32, i32* @target_port_protocols, align 4
  %149 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %148)
  %150 = load i32, i32* @device_type, align 4
  %151 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %150)
  %152 = load i32, i32* @sas_address, align 4
  %153 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %152)
  %154 = load i32, i32* @phy_identifier, align 4
  %155 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %154)
  %156 = load i32, i32* @negotiated_linkrate, align 4
  %157 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %156)
  %158 = load i32, i32* @minimum_linkrate_hw, align 4
  %159 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %158)
  %160 = load i32, i32* @minimum_linkrate, align 4
  %161 = call i32 @SETUP_PHY_ATTRIBUTE_RW(i32 %160)
  %162 = load i32, i32* @maximum_linkrate_hw, align 4
  %163 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %162)
  %164 = load i32, i32* @maximum_linkrate, align 4
  %165 = call i32 @SETUP_PHY_ATTRIBUTE_RW(i32 %164)
  %166 = load i32, i32* @invalid_dword_count, align 4
  %167 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %166)
  %168 = load i32, i32* @running_disparity_error_count, align 4
  %169 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %168)
  %170 = load i32, i32* @loss_of_dword_sync_count, align 4
  %171 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %170)
  %172 = load i32, i32* @phy_reset_problem_count, align 4
  %173 = call i32 @SETUP_PHY_ATTRIBUTE(i32 %172)
  %174 = load i32, i32* @link_reset, align 4
  %175 = load i32, i32* @phy_reset, align 4
  %176 = call i32 @SETUP_OPTIONAL_PHY_ATTRIBUTE_WRONLY(i32 %174, i32 %175)
  %177 = load i32, i32* @hard_reset, align 4
  %178 = load i32, i32* @phy_reset, align 4
  %179 = call i32 @SETUP_OPTIONAL_PHY_ATTRIBUTE_WRONLY(i32 %177, i32 %178)
  %180 = load i32, i32* @enable, align 4
  %181 = load i32, i32* @phy_enable, align 4
  %182 = call i32 @SETUP_OPTIONAL_PHY_ATTRIBUTE_RW(i32 %180, i32 %181)
  %183 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %184 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %183, i32 0, i32 5
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  store i32* null, i32** %188, align 8
  store i32 0, i32* %5, align 4
  %189 = load i32, i32* @num_phys, align 4
  %190 = call i32 @SETUP_PORT_ATTRIBUTE(i32 %189)
  %191 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %192 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %191, i32 0, i32 4
  %193 = load i32**, i32*** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %193, i64 %195
  store i32* null, i32** %196, align 8
  store i32 0, i32* %5, align 4
  %197 = load i32, i32* @rphy_initiator_port_protocols, align 4
  %198 = call i32 @SETUP_RPORT_ATTRIBUTE(i32 %197)
  %199 = load i32, i32* @rphy_target_port_protocols, align 4
  %200 = call i32 @SETUP_RPORT_ATTRIBUTE(i32 %199)
  %201 = load i32, i32* @rphy_device_type, align 4
  %202 = call i32 @SETUP_RPORT_ATTRIBUTE(i32 %201)
  %203 = load i32, i32* @rphy_sas_address, align 4
  %204 = call i32 @SETUP_RPORT_ATTRIBUTE(i32 %203)
  %205 = load i32, i32* @rphy_phy_identifier, align 4
  %206 = call i32 @SETUP_RPORT_ATTRIBUTE(i32 %205)
  %207 = load i32, i32* @rphy_scsi_target_id, align 4
  %208 = call i32 @SETUP_RPORT_ATTRIBUTE(i32 %207)
  %209 = load i32, i32* @rphy_enclosure_identifier, align 4
  %210 = load i32, i32* @get_enclosure_identifier, align 4
  %211 = call i32 @SETUP_OPTIONAL_RPORT_ATTRIBUTE(i32 %209, i32 %210)
  %212 = load i32, i32* @rphy_bay_identifier, align 4
  %213 = load i32, i32* @get_bay_identifier, align 4
  %214 = call i32 @SETUP_OPTIONAL_RPORT_ATTRIBUTE(i32 %212, i32 %213)
  %215 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %216 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %215, i32 0, i32 3
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  store i32* null, i32** %220, align 8
  store i32 0, i32* %5, align 4
  %221 = load i32, i32* @end_dev_ready_led_meaning, align 4
  %222 = call i32 @SETUP_END_DEV_ATTRIBUTE(i32 %221)
  %223 = load i32, i32* @end_dev_I_T_nexus_loss_timeout, align 4
  %224 = call i32 @SETUP_END_DEV_ATTRIBUTE(i32 %223)
  %225 = load i32, i32* @end_dev_initiator_response_timeout, align 4
  %226 = call i32 @SETUP_END_DEV_ATTRIBUTE(i32 %225)
  %227 = load i32, i32* @end_dev_tlr_supported, align 4
  %228 = call i32 @SETUP_END_DEV_ATTRIBUTE(i32 %227)
  %229 = load i32, i32* @end_dev_tlr_enabled, align 4
  %230 = call i32 @SETUP_END_DEV_ATTRIBUTE(i32 %229)
  %231 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %232 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %231, i32 0, i32 2
  %233 = load i32**, i32*** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  store i32* null, i32** %236, align 8
  store i32 0, i32* %5, align 4
  %237 = load i32, i32* @vendor_id, align 4
  %238 = call i32 @SETUP_EXPANDER_ATTRIBUTE(i32 %237)
  %239 = load i32, i32* @product_id, align 4
  %240 = call i32 @SETUP_EXPANDER_ATTRIBUTE(i32 %239)
  %241 = load i32, i32* @product_rev, align 4
  %242 = call i32 @SETUP_EXPANDER_ATTRIBUTE(i32 %241)
  %243 = load i32, i32* @component_vendor_id, align 4
  %244 = call i32 @SETUP_EXPANDER_ATTRIBUTE(i32 %243)
  %245 = load i32, i32* @component_id, align 4
  %246 = call i32 @SETUP_EXPANDER_ATTRIBUTE(i32 %245)
  %247 = load i32, i32* @component_revision_id, align 4
  %248 = call i32 @SETUP_EXPANDER_ATTRIBUTE(i32 %247)
  %249 = load i32, i32* @level, align 4
  %250 = call i32 @SETUP_EXPANDER_ATTRIBUTE(i32 %249)
  %251 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %252 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %251, i32 0, i32 1
  %253 = load i32**, i32*** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  store i32* null, i32** %256, align 8
  %257 = load %struct.sas_internal*, %struct.sas_internal** %4, align 8
  %258 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %257, i32 0, i32 0
  store %struct.scsi_transport_template* %258, %struct.scsi_transport_template** %2, align 8
  br label %259

259:                                              ; preds = %11, %10
  %260 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %2, align 8
  ret %struct.scsi_transport_template* %260
}

declare dso_local %struct.sas_internal* @kzalloc(i32, i32) #1

declare dso_local i32 @transport_container_register(%struct.TYPE_10__*) #1

declare dso_local i32 @SETUP_PHY_ATTRIBUTE(i32) #1

declare dso_local i32 @SETUP_PHY_ATTRIBUTE_RW(i32) #1

declare dso_local i32 @SETUP_OPTIONAL_PHY_ATTRIBUTE_WRONLY(i32, i32) #1

declare dso_local i32 @SETUP_OPTIONAL_PHY_ATTRIBUTE_RW(i32, i32) #1

declare dso_local i32 @SETUP_PORT_ATTRIBUTE(i32) #1

declare dso_local i32 @SETUP_RPORT_ATTRIBUTE(i32) #1

declare dso_local i32 @SETUP_OPTIONAL_RPORT_ATTRIBUTE(i32, i32) #1

declare dso_local i32 @SETUP_END_DEV_ATTRIBUTE(i32) #1

declare dso_local i32 @SETUP_EXPANDER_ATTRIBUTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
