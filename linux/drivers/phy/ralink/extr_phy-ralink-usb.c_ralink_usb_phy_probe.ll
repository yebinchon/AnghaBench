; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ralink/extr_phy-ralink-usb.c_ralink_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ralink/extr_phy-ralink-usb.c_ralink_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.phy_provider = type { i32 }
%struct.of_device_id = type { i64 }
%struct.ralink_usb_phy = type { i64, i32*, i32*, i32*, i32*, i32* }

@ralink_usb_phy_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ralink,sysctl\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get sysctl registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"mediatek,mt7628-usbphy\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to remap register memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"host reset is missing\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"device reset is missing\0A\00", align 1
@ralink_usb_phy_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ralink_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ralink_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.ralink_usb_phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @ralink_usb_phy_of_match, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.of_device_id* @of_match_device(i32 %11, %struct.device* %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %7, align 8
  %15 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %16 = icmp ne %struct.of_device_id* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %150

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ralink_usb_phy* @devm_kzalloc(%struct.device* %21, i32 48, i32 %22)
  store %struct.ralink_usb_phy* %23, %struct.ralink_usb_phy** %8, align 8
  %24 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %25 = icmp ne %struct.ralink_usb_phy* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %150

29:                                               ; preds = %20
  %30 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %34 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %36 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @syscon_regmap_lookup_by_phandle(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %42 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %41, i32 0, i32 5
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %44 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @IS_ERR(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %29
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %52 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @PTR_ERR(i32* %53)
  store i32 %54, i32* %2, align 4
  br label %150

55:                                               ; preds = %29
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @of_device_is_compatible(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* @IORESOURCE_MEM, align 4
  %64 = call %struct.resource* @platform_get_resource(%struct.platform_device* %62, i32 %63, i32 0)
  store %struct.resource* %64, %struct.resource** %5, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  %68 = call i32* @devm_ioremap_resource(%struct.device* %66, %struct.resource* %67)
  %69 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %70 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %72 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @IS_ERR(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %61
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %80 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @PTR_ERR(i32* %81)
  store i32 %82, i32* %2, align 4
  br label %150

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %55
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i8* @devm_reset_control_get(%struct.device* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %90 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %89, i32 0, i32 3
  store i32* %88, i32** %90, align 8
  %91 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %92 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @IS_ERR(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %84
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %100 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @PTR_ERR(i32* %101)
  store i32 %102, i32* %2, align 4
  br label %150

103:                                              ; preds = %84
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i8* @devm_reset_control_get(%struct.device* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %109 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  %110 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %111 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @IS_ERR(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %103
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %118 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %119 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @PTR_ERR(i32* %120)
  store i32 %121, i32* %2, align 4
  br label %150

122:                                              ; preds = %103
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32* @devm_phy_create(%struct.device* %123, i32* null, i32* @ralink_usb_phy_ops)
  %125 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %126 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %125, i32 0, i32 1
  store i32* %124, i32** %126, align 8
  %127 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %128 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i64 @IS_ERR(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %135 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %136 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @PTR_ERR(i32* %137)
  store i32 %138, i32* %2, align 4
  br label %150

139:                                              ; preds = %122
  %140 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %141 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %8, align 8
  %144 = call i32 @phy_set_drvdata(i32* %142, %struct.ralink_usb_phy* %143)
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = load i32, i32* @of_phy_simple_xlate, align 4
  %147 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %145, i32 %146)
  store %struct.phy_provider* %147, %struct.phy_provider** %6, align 8
  %148 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %149 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %148)
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %139, %132, %115, %96, %76, %48, %26, %17
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.ralink_usb_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(i32*, %struct.ralink_usb_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
