; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi3660-usb3.c_hi3660_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi3660-usb3.c_hi3660_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.phy_provider = type { i32 }
%struct.phy = type { i32 }
%struct.hi3660_priv = type { i32, %struct.phy*, %struct.phy*, %struct.phy*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hisilicon,pericrg-syscon\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"no hisilicon,pericrg-syscon\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"hisilicon,pctrl-syscon\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"no hisilicon,pctrl-syscon\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"no hisilicon,usb3-otg-bc-syscon\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"hisilicon,eye-diagram-param\00", align 1
@HI3660_USB_DEFAULT_PHY_PARAM = common dso_local global i32 0, align 4
@hi3660_phy_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi3660_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca %struct.hi3660_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hi3660_priv* @devm_kzalloc(%struct.device* %10, i32 40, i32 %11)
  store %struct.hi3660_priv* %12, %struct.hi3660_priv** %7, align 8
  %13 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %14 = icmp ne %struct.hi3660_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %112

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %21 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %20, i32 0, i32 4
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @syscon_regmap_lookup_by_phandle(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.phy*
  %27 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %28 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %27, i32 0, i32 3
  store %struct.phy* %26, %struct.phy** %28, align 8
  %29 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %30 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %29, i32 0, i32 3
  %31 = load %struct.phy*, %struct.phy** %30, align 8
  %32 = call i64 @IS_ERR(%struct.phy* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %18
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %38 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %37, i32 0, i32 3
  %39 = load %struct.phy*, %struct.phy** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.phy* %39)
  store i32 %40, i32* %2, align 4
  br label %112

41:                                               ; preds = %18
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @syscon_regmap_lookup_by_phandle(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = bitcast i8* %45 to %struct.phy*
  %47 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %48 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %47, i32 0, i32 2
  store %struct.phy* %46, %struct.phy** %48, align 8
  %49 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %50 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %49, i32 0, i32 2
  %51 = load %struct.phy*, %struct.phy** %50, align 8
  %52 = call i64 @IS_ERR(%struct.phy* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %41
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %58 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %57, i32 0, i32 2
  %59 = load %struct.phy*, %struct.phy** %58, align 8
  %60 = call i32 @PTR_ERR(%struct.phy* %59)
  store i32 %60, i32* %2, align 4
  br label %112

61:                                               ; preds = %41
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.phy* @syscon_node_to_regmap(i32 %66)
  %68 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %69 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %68, i32 0, i32 1
  store %struct.phy* %67, %struct.phy** %69, align 8
  %70 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %71 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %70, i32 0, i32 1
  %72 = load %struct.phy*, %struct.phy** %71, align 8
  %73 = call i64 @IS_ERR(%struct.phy* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %61
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %79 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %78, i32 0, i32 1
  %80 = load %struct.phy*, %struct.phy** %79, align 8
  %81 = call i32 @PTR_ERR(%struct.phy* %80)
  store i32 %81, i32* %2, align 4
  br label %112

82:                                               ; preds = %61
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = getelementptr inbounds %struct.device, %struct.device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %87 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %86, i32 0, i32 0
  %88 = call i64 @of_property_read_u32(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @HI3660_USB_DEFAULT_PHY_PARAM, align 4
  %92 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %93 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %82
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call %struct.phy* @devm_phy_create(%struct.device* %95, i32* null, i32* @hi3660_phy_ops)
  store %struct.phy* %96, %struct.phy** %6, align 8
  %97 = load %struct.phy*, %struct.phy** %6, align 8
  %98 = call i64 @IS_ERR(%struct.phy* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load %struct.phy*, %struct.phy** %6, align 8
  %102 = call i32 @PTR_ERR(%struct.phy* %101)
  store i32 %102, i32* %2, align 4
  br label %112

103:                                              ; preds = %94
  %104 = load %struct.phy*, %struct.phy** %6, align 8
  %105 = load %struct.hi3660_priv*, %struct.hi3660_priv** %7, align 8
  %106 = call i32 @phy_set_drvdata(%struct.phy* %104, %struct.hi3660_priv* %105)
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = load i32, i32* @of_phy_simple_xlate, align 4
  %109 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %107, i32 %108)
  store %struct.phy_provider* %109, %struct.phy_provider** %4, align 8
  %110 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %111 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %110)
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %103, %100, %75, %54, %34, %15
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.hi3660_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local %struct.phy* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.hi3660_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
