; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/roles/extr_intel-xhci-usb-role-switch.c_intel_xhci_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/roles/extr_intel-xhci-usb-role-switch.c_intel_xhci_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_role_switch_desc = type { i32, i32, i32, i32 }
%struct.intel_xhci_usb_data = type { i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@intel_xhci_usb_node = common dso_local global i32 0, align 4
@intel_xhci_usb_set_role = common dso_local global i32 0, align 4
@intel_xhci_usb_get_role = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sw_switch_disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_xhci_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_xhci_usb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_role_switch_desc, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.intel_xhci_usb_data*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.usb_role_switch_desc* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.intel_xhci_usb_data* @devm_kzalloc(%struct.device* %12, i32 12, i32 %13)
  store %struct.intel_xhci_usb_data* %14, %struct.intel_xhci_usb_data** %6, align 8
  %15 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %16 = icmp ne %struct.intel_xhci_usb_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %92

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %7, align 8
  %24 = load %struct.resource*, %struct.resource** %7, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %92

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = call i32 @resource_size(%struct.resource* %34)
  %36 = call i32 @devm_ioremap_nocache(%struct.device* %30, i32 %33, i32 %35)
  %37 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %38 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %40 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %92

46:                                               ; preds = %29
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %49 = call i32 @platform_set_drvdata(%struct.platform_device* %47, %struct.intel_xhci_usb_data* %48)
  %50 = call i32 @software_node_register(i32* @intel_xhci_usb_node)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %92

55:                                               ; preds = %46
  %56 = load i32, i32* @intel_xhci_usb_set_role, align 4
  %57 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %4, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @intel_xhci_usb_get_role, align 4
  %59 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %4, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %4, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = call i32 @software_node_fwnode(i32* @intel_xhci_usb_node)
  %62 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %4, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 @device_property_read_bool(%struct.device* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %69 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @usb_role_switch_register(%struct.device* %70, %struct.usb_role_switch_desc* %4)
  %72 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %73 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %75 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %55
  %80 = getelementptr inbounds %struct.usb_role_switch_desc, %struct.usb_role_switch_desc* %4, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @fwnode_handle_put(i32 %81)
  %83 = load %struct.intel_xhci_usb_data*, %struct.intel_xhci_usb_data** %6, align 8
  %84 = getelementptr inbounds %struct.intel_xhci_usb_data, %struct.intel_xhci_usb_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %92

87:                                               ; preds = %55
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = call i32 @pm_runtime_set_active(%struct.device* %88)
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = call i32 @pm_runtime_enable(%struct.device* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %87, %79, %53, %43, %26, %17
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.intel_xhci_usb_data* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @devm_ioremap_nocache(%struct.device*, i32, i32) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.intel_xhci_usb_data*) #2

declare dso_local i32 @software_node_register(i32*) #2

declare dso_local i32 @software_node_fwnode(i32*) #2

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #2

declare dso_local i32 @usb_role_switch_register(%struct.device*, %struct.usb_role_switch_desc*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @fwnode_handle_put(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #2

declare dso_local i32 @pm_runtime_enable(%struct.device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
