; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi6220-usb.c_hi6220_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi6220-usb.c_hi6220_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy_provider = type { i32 }
%struct.phy = type { i32 }
%struct.hi6220_priv = type { %struct.phy*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"hisilicon,peripheral-syscon\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"no hisilicon,peripheral-syscon\0A\00", align 1
@hi6220_phy_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi6220_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca %struct.hi6220_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.hi6220_priv* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.hi6220_priv* %12, %struct.hi6220_priv** %7, align 8
  %13 = load %struct.hi6220_priv*, %struct.hi6220_priv** %7, align 8
  %14 = icmp ne %struct.hi6220_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.hi6220_priv*, %struct.hi6220_priv** %7, align 8
  %21 = getelementptr inbounds %struct.hi6220_priv, %struct.hi6220_priv* %20, i32 0, i32 1
  store %struct.device* %19, %struct.device** %21, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.phy* @syscon_regmap_lookup_by_phandle(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.hi6220_priv*, %struct.hi6220_priv** %7, align 8
  %27 = getelementptr inbounds %struct.hi6220_priv, %struct.hi6220_priv* %26, i32 0, i32 0
  store %struct.phy* %25, %struct.phy** %27, align 8
  %28 = load %struct.hi6220_priv*, %struct.hi6220_priv** %7, align 8
  %29 = getelementptr inbounds %struct.hi6220_priv, %struct.hi6220_priv* %28, i32 0, i32 0
  %30 = load %struct.phy*, %struct.phy** %29, align 8
  %31 = call i64 @IS_ERR(%struct.phy* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.hi6220_priv*, %struct.hi6220_priv** %7, align 8
  %37 = getelementptr inbounds %struct.hi6220_priv, %struct.hi6220_priv* %36, i32 0, i32 0
  %38 = load %struct.phy*, %struct.phy** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.phy* %38)
  store i32 %39, i32* %2, align 4
  br label %60

40:                                               ; preds = %18
  %41 = load %struct.hi6220_priv*, %struct.hi6220_priv** %7, align 8
  %42 = call i32 @hi6220_phy_init(%struct.hi6220_priv* %41)
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call %struct.phy* @devm_phy_create(%struct.device* %43, i32* null, i32* @hi6220_phy_ops)
  store %struct.phy* %44, %struct.phy** %6, align 8
  %45 = load %struct.phy*, %struct.phy** %6, align 8
  %46 = call i64 @IS_ERR(%struct.phy* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.phy*, %struct.phy** %6, align 8
  %50 = call i32 @PTR_ERR(%struct.phy* %49)
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %40
  %52 = load %struct.phy*, %struct.phy** %6, align 8
  %53 = load %struct.hi6220_priv*, %struct.hi6220_priv** %7, align 8
  %54 = call i32 @phy_set_drvdata(%struct.phy* %52, %struct.hi6220_priv* %53)
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* @of_phy_simple_xlate, align 4
  %57 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %55, i32 %56)
  store %struct.phy_provider* %57, %struct.phy_provider** %4, align 8
  %58 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %59 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %51, %48, %33, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.hi6220_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.phy* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @hi6220_phy_init(%struct.hi6220_priv*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.hi6220_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
