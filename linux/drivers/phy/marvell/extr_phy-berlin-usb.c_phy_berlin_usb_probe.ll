; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-berlin-usb.c_phy_berlin_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-berlin-usb.c_phy_berlin_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.of_device_id = type { i64 }
%struct.phy_berlin_usb_priv = type { i32, %struct.phy*, %struct.phy* }
%struct.phy = type { i32 }
%struct.resource = type { i32 }
%struct.phy_provider = type { i32 }

@phy_berlin_usb_of_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@phy_berlin_usb_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @phy_berlin_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_berlin_usb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.phy_berlin_usb_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca %struct.phy_provider*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @phy_berlin_usb_of_match, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.of_device_id* @of_match_device(i32 %9, i32* %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.phy_berlin_usb_priv* @devm_kzalloc(i32* %14, i32 24, i32 %15)
  store %struct.phy_berlin_usb_priv* %16, %struct.phy_berlin_usb_priv** %5, align 8
  %17 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %18 = icmp ne %struct.phy_berlin_usb_priv* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = call %struct.phy* @devm_ioremap_resource(i32* %27, %struct.resource* %28)
  %30 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %31 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %30, i32 0, i32 2
  store %struct.phy* %29, %struct.phy** %31, align 8
  %32 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %33 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %32, i32 0, i32 2
  %34 = load %struct.phy*, %struct.phy** %33, align 8
  %35 = call i64 @IS_ERR(%struct.phy* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %39 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %38, i32 0, i32 2
  %40 = load %struct.phy*, %struct.phy** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.phy* %40)
  store i32 %41, i32* %2, align 4
  br label %88

42:                                               ; preds = %22
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call %struct.phy* @devm_reset_control_get(i32* %44, i32* null)
  %46 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %47 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %46, i32 0, i32 1
  store %struct.phy* %45, %struct.phy** %47, align 8
  %48 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %49 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %48, i32 0, i32 1
  %50 = load %struct.phy*, %struct.phy** %49, align 8
  %51 = call i64 @IS_ERR(%struct.phy* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %55 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %54, i32 0, i32 1
  %56 = load %struct.phy*, %struct.phy** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.phy* %56)
  store i32 %57, i32* %2, align 4
  br label %88

58:                                               ; preds = %42
  %59 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %60 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %65 = getelementptr inbounds %struct.phy_berlin_usb_priv, %struct.phy_berlin_usb_priv* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call %struct.phy* @devm_phy_create(i32* %67, i32* null, i32* @phy_berlin_usb_ops)
  store %struct.phy* %68, %struct.phy** %7, align 8
  %69 = load %struct.phy*, %struct.phy** %7, align 8
  %70 = call i64 @IS_ERR(%struct.phy* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %58
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.phy*, %struct.phy** %7, align 8
  %77 = call i32 @PTR_ERR(%struct.phy* %76)
  store i32 %77, i32* %2, align 4
  br label %88

78:                                               ; preds = %58
  %79 = load %struct.phy*, %struct.phy** %7, align 8
  %80 = load %struct.phy_berlin_usb_priv*, %struct.phy_berlin_usb_priv** %5, align 8
  %81 = call i32 @phy_set_drvdata(%struct.phy* %79, %struct.phy_berlin_usb_priv* %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* @of_phy_simple_xlate, align 4
  %85 = call %struct.phy_provider* @devm_of_phy_provider_register(i32* %83, i32 %84)
  store %struct.phy_provider* %85, %struct.phy_provider** %8, align 8
  %86 = load %struct.phy_provider*, %struct.phy_provider** %8, align 8
  %87 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %86)
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %78, %72, %53, %37, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.phy_berlin_usb_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local %struct.phy* @devm_reset_control_get(i32*, i32*) #1

declare dso_local %struct.phy* @devm_phy_create(i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.phy_berlin_usb_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(i32*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
