; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8mq-usb.c_imx8mq_usb_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8mq-usb.c_imx8mq_usb_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy_provider = type { i32 }
%struct.imx8mq_usb_phy = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to get imx8mq usb phy clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@imx8mq_usb_phy_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx8mq_usb_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8mq_usb_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.imx8mq_usb_phy*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.imx8mq_usb_phy* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.imx8mq_usb_phy* %12, %struct.imx8mq_usb_phy** %6, align 8
  %13 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %14 = icmp ne %struct.imx8mq_usb_phy* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %95

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @devm_clk_get(%struct.device* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %22 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %24 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %32 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %18
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %7, align 8
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.resource*, %struct.resource** %7, align 8
  %41 = call i32 @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %43 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %45 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %51 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %95

54:                                               ; preds = %35
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @devm_phy_create(%struct.device* %55, i32* null, i32* @imx8mq_usb_phy_ops)
  %57 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %58 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %60 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %66 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %2, align 4
  br label %95

69:                                               ; preds = %54
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @devm_regulator_get(%struct.device* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %73 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %75 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %81 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %95

84:                                               ; preds = %69
  %85 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %86 = getelementptr inbounds %struct.imx8mq_usb_phy, %struct.imx8mq_usb_phy* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.imx8mq_usb_phy*, %struct.imx8mq_usb_phy** %6, align 8
  %89 = call i32 @phy_set_drvdata(i32 %87, %struct.imx8mq_usb_phy* %88)
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load i32, i32* @of_phy_simple_xlate, align 4
  %92 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %90, i32 %91)
  store %struct.phy_provider* %92, %struct.phy_provider** %4, align 8
  %93 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %94 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %84, %79, %64, %49, %28, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.imx8mq_usb_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @phy_set_drvdata(i32, %struct.imx8mq_usb_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
