; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb2.c_bcm_ns_usb2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/broadcom/extr_phy-bcm-ns-usb2.c_bcm_ns_usb2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.bcm_ns_usb2 = type { i32, i32, i32, %struct.device* }
%struct.resource = type { i32 }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dmu\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to map DMU regs\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"phy-ref-clk\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Clock not defined\0A\00", align 1
@ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_ns_usb2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_ns_usb2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcm_ns_usb2*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.phy_provider*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bcm_ns_usb2* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.bcm_ns_usb2* %13, %struct.bcm_ns_usb2** %5, align 8
  %14 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %15 = icmp ne %struct.bcm_ns_usb2* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %89

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %22 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %21, i32 0, i32 3
  store %struct.device* %20, %struct.device** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.device* %26, %struct.resource* %27)
  %29 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %30 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %32 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %40 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %89

43:                                               ; preds = %19
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @devm_clk_get(%struct.device* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %47 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %49 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %57 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %89

60:                                               ; preds = %43
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @devm_phy_create(%struct.device* %61, i32* null, i32* @ops)
  %63 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %64 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %66 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %72 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %89

75:                                               ; preds = %60
  %76 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %77 = getelementptr inbounds %struct.bcm_ns_usb2, %struct.bcm_ns_usb2* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %80 = call i32 @phy_set_drvdata(i32 %78, %struct.bcm_ns_usb2* %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load %struct.bcm_ns_usb2*, %struct.bcm_ns_usb2** %5, align 8
  %83 = call i32 @platform_set_drvdata(%struct.platform_device* %81, %struct.bcm_ns_usb2* %82)
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* @of_phy_simple_xlate, align 4
  %86 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %84, i32 %85)
  store %struct.phy_provider* %86, %struct.phy_provider** %7, align 8
  %87 = load %struct.phy_provider*, %struct.phy_provider** %7, align 8
  %88 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %75, %70, %53, %36, %16
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.bcm_ns_usb2* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(i32, %struct.bcm_ns_usb2*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm_ns_usb2*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
