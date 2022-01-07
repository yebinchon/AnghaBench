; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-pxa-28nm-usb2.c_mv_usb2_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-pxa-28nm-usb2.c_mv_usb2_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.phy_provider = type { i32 }
%struct.mv_usb2_phy = type { i32, i32, i32, %struct.platform_device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to get clock.\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@usb_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mv_usb2_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_usb2_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.mv_usb2_phy*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mv_usb2_phy* @devm_kzalloc(%struct.TYPE_7__* %8, i32 24, i32 %9)
  store %struct.mv_usb2_phy* %10, %struct.mv_usb2_phy** %5, align 8
  %11 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %12 = icmp ne %struct.mv_usb2_phy* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %19 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %18, i32 0, i32 3
  store %struct.platform_device* %17, %struct.platform_device** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @devm_clk_get(%struct.TYPE_7__* %21, i32* null)
  %23 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %24 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %26 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %16
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_7__* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %35 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %90

38:                                               ; preds = %16
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %43, %struct.resource* %44)
  %46 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %47 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %49 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %38
  %54 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %55 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %90

58:                                               ; preds = %38
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @devm_phy_create(%struct.TYPE_7__* %60, i32 %64, i32* @usb_ops)
  %66 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %67 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %69 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %58
  %74 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %75 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %2, align 4
  br label %90

78:                                               ; preds = %58
  %79 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %80 = getelementptr inbounds %struct.mv_usb2_phy, %struct.mv_usb2_phy* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mv_usb2_phy*, %struct.mv_usb2_phy** %5, align 8
  %83 = call i32 @phy_set_drvdata(i32 %81, %struct.mv_usb2_phy* %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* @of_phy_simple_xlate, align 4
  %87 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_7__* %85, i32 %86)
  store %struct.phy_provider* %87, %struct.phy_provider** %4, align 8
  %88 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %89 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %78, %73, %53, %30, %13
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.mv_usb2_phy* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i32 @devm_phy_create(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @phy_set_drvdata(i32, %struct.mv_usb2_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
