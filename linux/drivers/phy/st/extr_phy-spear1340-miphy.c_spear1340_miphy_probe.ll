; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1340-miphy.c_spear1340_miphy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-spear1340-miphy.c_spear1340_miphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.spear1340_miphy_priv = type { %struct.phy_provider*, %struct.phy_provider* }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to find misc regmap\0A\00", align 1
@spear1340_miphy_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to create SATA PCIe PHY\0A\00", align 1
@spear1340_miphy_xlate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register phy provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear1340_miphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear1340_miphy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.spear1340_miphy_priv*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.spear1340_miphy_priv* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.spear1340_miphy_priv* %11, %struct.spear1340_miphy_priv** %5, align 8
  %12 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %13 = icmp ne %struct.spear1340_miphy_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %23 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %22, i32 0, i32 1
  store %struct.phy_provider* %21, %struct.phy_provider** %23, align 8
  %24 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %25 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %24, i32 0, i32 1
  %26 = load %struct.phy_provider*, %struct.phy_provider** %25, align 8
  %27 = call i64 @IS_ERR(%struct.phy_provider* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %33 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %32, i32 0, i32 1
  %34 = load %struct.phy_provider*, %struct.phy_provider** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.phy_provider* %34)
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %17
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call %struct.phy_provider* @devm_phy_create(%struct.device* %37, i32* null, i32* @spear1340_miphy_ops)
  %39 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %40 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %39, i32 0, i32 0
  store %struct.phy_provider* %38, %struct.phy_provider** %40, align 8
  %41 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %42 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %41, i32 0, i32 0
  %43 = load %struct.phy_provider*, %struct.phy_provider** %42, align 8
  %44 = call i64 @IS_ERR(%struct.phy_provider* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %50 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %49, i32 0, i32 0
  %51 = load %struct.phy_provider*, %struct.phy_provider** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.phy_provider* %51)
  store i32 %52, i32* %2, align 4
  br label %74

53:                                               ; preds = %36
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %56 = call i32 @dev_set_drvdata(%struct.device* %54, %struct.spear1340_miphy_priv* %55)
  %57 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %58 = getelementptr inbounds %struct.spear1340_miphy_priv, %struct.spear1340_miphy_priv* %57, i32 0, i32 0
  %59 = load %struct.phy_provider*, %struct.phy_provider** %58, align 8
  %60 = load %struct.spear1340_miphy_priv*, %struct.spear1340_miphy_priv** %5, align 8
  %61 = call i32 @phy_set_drvdata(%struct.phy_provider* %59, %struct.spear1340_miphy_priv* %60)
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* @spear1340_miphy_xlate, align 4
  %64 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %62, i32 %63)
  store %struct.phy_provider* %64, %struct.phy_provider** %6, align 8
  %65 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %66 = call i64 @IS_ERR(%struct.phy_provider* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %72 = call i32 @PTR_ERR(%struct.phy_provider* %71)
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %68, %46, %29, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.spear1340_miphy_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.phy_provider* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.spear1340_miphy_priv*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.spear1340_miphy_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
