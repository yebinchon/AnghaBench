; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1310-miphy.c_spear1310_miphy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1310-miphy.c_spear1310_miphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.spear1310_miphy_priv = type { %struct.phy_provider*, i32, %struct.phy_provider* }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to find misc regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"phy-id\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to find phy id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@spear1310_miphy_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to create SATA PCIe PHY\0A\00", align 1
@spear1310_miphy_xlate = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to register phy provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear1310_miphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear1310_miphy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.spear1310_miphy_priv*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.spear1310_miphy_priv* @devm_kzalloc(%struct.device* %9, i32 24, i32 %10)
  store %struct.spear1310_miphy_priv* %11, %struct.spear1310_miphy_priv** %5, align 8
  %12 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %13 = icmp ne %struct.spear1310_miphy_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %23 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %22, i32 0, i32 2
  store %struct.phy_provider* %21, %struct.phy_provider** %23, align 8
  %24 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %25 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %24, i32 0, i32 2
  %26 = load %struct.phy_provider*, %struct.phy_provider** %25, align 8
  %27 = call i64 @IS_ERR(%struct.phy_provider* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %33 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %32, i32 0, i32 2
  %34 = load %struct.phy_provider*, %struct.phy_provider** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.phy_provider* %34)
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %17
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %41 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %40, i32 0, i32 1
  %42 = call i64 @of_property_read_u32(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %87

49:                                               ; preds = %36
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call %struct.phy_provider* @devm_phy_create(%struct.device* %50, i32* null, i32* @spear1310_miphy_ops)
  %52 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %53 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %52, i32 0, i32 0
  store %struct.phy_provider* %51, %struct.phy_provider** %53, align 8
  %54 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %55 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %54, i32 0, i32 0
  %56 = load %struct.phy_provider*, %struct.phy_provider** %55, align 8
  %57 = call i64 @IS_ERR(%struct.phy_provider* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %63 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %62, i32 0, i32 0
  %64 = load %struct.phy_provider*, %struct.phy_provider** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.phy_provider* %64)
  store i32 %65, i32* %2, align 4
  br label %87

66:                                               ; preds = %49
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %69 = call i32 @dev_set_drvdata(%struct.device* %67, %struct.spear1310_miphy_priv* %68)
  %70 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %71 = getelementptr inbounds %struct.spear1310_miphy_priv, %struct.spear1310_miphy_priv* %70, i32 0, i32 0
  %72 = load %struct.phy_provider*, %struct.phy_provider** %71, align 8
  %73 = load %struct.spear1310_miphy_priv*, %struct.spear1310_miphy_priv** %5, align 8
  %74 = call i32 @phy_set_drvdata(%struct.phy_provider* %72, %struct.spear1310_miphy_priv* %73)
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load i32, i32* @spear1310_miphy_xlate, align 4
  %77 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %75, i32 %76)
  store %struct.phy_provider* %77, %struct.phy_provider** %6, align 8
  %78 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %79 = call i64 @IS_ERR(%struct.phy_provider* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %84 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %85 = call i32 @PTR_ERR(%struct.phy_provider* %84)
  store i32 %85, i32* %2, align 4
  br label %87

86:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %81, %59, %44, %29, %14
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.spear1310_miphy_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.spear1310_miphy_priv*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.spear1310_miphy_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
