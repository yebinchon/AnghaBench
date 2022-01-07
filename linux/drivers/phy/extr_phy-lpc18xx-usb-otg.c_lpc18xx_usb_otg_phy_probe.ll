; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-lpc18xx-usb-otg.c_lpc18xx_usb_otg_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-lpc18xx-usb-otg.c_lpc18xx_usb_otg_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.phy_provider = type { i32 }
%struct.lpc18xx_usb_otg_phy = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to get syscon\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@lpc18xx_usb_otg_phy_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_usb_otg_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_usb_otg_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.lpc18xx_usb_otg_phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lpc18xx_usb_otg_phy* @devm_kzalloc(%struct.TYPE_8__* %7, i32 12, i32 %8)
  store %struct.lpc18xx_usb_otg_phy* %9, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %10 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %11 = icmp ne %struct.lpc18xx_usb_otg_phy* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @syscon_node_to_regmap(i32 %21)
  %23 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %24 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %26 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %15
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %35 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %88

38:                                               ; preds = %15
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @devm_clk_get(%struct.TYPE_8__* %40, i32* null)
  %42 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %43 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %45 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_8__* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %54 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %88

57:                                               ; preds = %38
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @devm_phy_create(%struct.TYPE_8__* %59, i32* null, i32* @lpc18xx_usb_otg_phy_ops)
  %61 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %62 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %64 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %57
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_8__* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %73 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %88

76:                                               ; preds = %57
  %77 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %78 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %5, align 8
  %81 = call i32 @phy_set_drvdata(i32 %79, %struct.lpc18xx_usb_otg_phy* %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* @of_phy_simple_xlate, align 4
  %85 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_8__* %83, i32 %84)
  store %struct.phy_provider* %85, %struct.phy_provider** %4, align 8
  %86 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %87 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %76, %68, %49, %30, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.lpc18xx_usb_otg_phy* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @devm_phy_create(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(i32, %struct.lpc18xx_usb_otg_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
