; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hix5hd2-sata.c_hix5hd2_sata_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hix5hd2-sata.c_hix5hd2_sata_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.phy = type { i32 }
%struct.hix5hd2_priv = type { %struct.phy*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"hisilicon,peripheral-syscon\00", align 1
@hix5hd2_sata_phy_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to create PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hix5hd2_sata_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_sata_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.phy*, align 8
  %8 = alloca %struct.hix5hd2_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hix5hd2_priv* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.hix5hd2_priv* %13, %struct.hix5hd2_priv** %8, align 8
  %14 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %15 = icmp ne %struct.hix5hd2_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %80

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = call i32 @resource_size(%struct.resource* %33)
  %35 = call i32 @devm_ioremap(%struct.device* %29, i32 %32, i32 %34)
  %36 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %37 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %39 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %80

45:                                               ; preds = %28
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.phy* @syscon_regmap_lookup_by_phandle(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %51 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %50, i32 0, i32 0
  store %struct.phy* %49, %struct.phy** %51, align 8
  %52 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %53 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %52, i32 0, i32 0
  %54 = load %struct.phy*, %struct.phy** %53, align 8
  %55 = call i64 @IS_ERR(%struct.phy* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %59 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %58, i32 0, i32 0
  store %struct.phy* null, %struct.phy** %59, align 8
  br label %60

60:                                               ; preds = %57, %45
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call %struct.phy* @devm_phy_create(%struct.device* %61, i32* null, i32* @hix5hd2_sata_phy_ops)
  store %struct.phy* %62, %struct.phy** %7, align 8
  %63 = load %struct.phy*, %struct.phy** %7, align 8
  %64 = call i64 @IS_ERR(%struct.phy* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.phy*, %struct.phy** %7, align 8
  %70 = call i32 @PTR_ERR(%struct.phy* %69)
  store i32 %70, i32* %2, align 4
  br label %80

71:                                               ; preds = %60
  %72 = load %struct.phy*, %struct.phy** %7, align 8
  %73 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %8, align 8
  %74 = call i32 @phy_set_drvdata(%struct.phy* %72, %struct.hix5hd2_priv* %73)
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i32, i32* @of_phy_simple_xlate, align 4
  %77 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %75, i32 %76)
  store %struct.phy_provider* %77, %struct.phy_provider** %4, align 8
  %78 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %79 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %71, %66, %42, %25, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.hix5hd2_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.phy* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.hix5hd2_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
