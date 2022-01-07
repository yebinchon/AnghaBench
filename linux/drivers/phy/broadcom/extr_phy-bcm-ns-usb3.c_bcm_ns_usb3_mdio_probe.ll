; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_mdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb3.c_bcm_ns_usb3_mdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i64 }
%struct.phy_provider = type { i32 }
%struct.device_node = type { i32 }
%struct.bcm_ns_usb3 = type { i32, i32, i32, i32, %struct.mdio_device*, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcm_ns_usb3_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"usb3-dmp-syscon\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to map DMP regs\0A\00", align 1
@bcm_ns_usb3_mdiodev_phy_write = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @bcm_ns_usb3_mdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_ns_usb3_mdio_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.bcm_ns_usb3*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca i32, align 4
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %11 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %12 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.bcm_ns_usb3* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.bcm_ns_usb3* %15, %struct.bcm_ns_usb3** %8, align 8
  %16 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %17 = icmp ne %struct.bcm_ns_usb3* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %103

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %24 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %23, i32 0, i32 5
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %26 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %27 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %26, i32 0, i32 4
  store %struct.mdio_device* %25, %struct.mdio_device** %27, align 8
  %28 = load i32, i32* @bcm_ns_usb3_id_table, align 4
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call %struct.of_device_id* @of_match_device(i32 %28, %struct.device* %29)
  store %struct.of_device_id* %30, %struct.of_device_id** %5, align 8
  %31 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %32 = icmp ne %struct.of_device_id* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %103

36:                                               ; preds = %21
  %37 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %42 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.device_node* @of_parse_phandle(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %46, %struct.device_node** %7, align 8
  %47 = load %struct.device_node*, %struct.device_node** %7, align 8
  %48 = call i32 @of_address_to_resource(%struct.device_node* %47, i32 0, %struct.resource* %9)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %36
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %2, align 4
  br label %103

55:                                               ; preds = %36
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @devm_ioremap_resource(%struct.device* %56, %struct.resource* %9)
  %58 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %59 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %61 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %69 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %103

72:                                               ; preds = %55
  %73 = load i32, i32* @bcm_ns_usb3_mdiodev_phy_write, align 4
  %74 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %75 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 @devm_phy_create(%struct.device* %76, i32* null, i32* @ops)
  %78 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %79 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %81 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %72
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %89 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %103

92:                                               ; preds = %72
  %93 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %94 = getelementptr inbounds %struct.bcm_ns_usb3, %struct.bcm_ns_usb3* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.bcm_ns_usb3*, %struct.bcm_ns_usb3** %8, align 8
  %97 = call i32 @phy_set_drvdata(i32 %95, %struct.bcm_ns_usb3* %96)
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load i32, i32* @of_phy_simple_xlate, align 4
  %100 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %98, i32 %99)
  store %struct.phy_provider* %100, %struct.phy_provider** %6, align 8
  %101 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %102 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %101)
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %92, %85, %65, %53, %33, %18
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.bcm_ns_usb3* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(i32, %struct.bcm_ns_usb3*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
