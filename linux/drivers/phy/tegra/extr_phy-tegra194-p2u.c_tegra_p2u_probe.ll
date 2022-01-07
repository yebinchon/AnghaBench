; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_phy-tegra194-p2u.c_tegra_p2u_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_phy-tegra194-p2u.c_tegra_p2u_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy_provider = type { i32 }
%struct.phy = type opaque
%struct.tegra_p2u = type { %struct.phy_provider* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_p2u_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_p2u_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.phy*, align 8
  %7 = alloca %struct.tegra_p2u*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tegra_p2u* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.tegra_p2u* %13, %struct.tegra_p2u** %7, align 8
  %14 = load %struct.tegra_p2u*, %struct.tegra_p2u** %7, align 8
  %15 = icmp ne %struct.tegra_p2u* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %22, %struct.resource** %8, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.tegra_p2u*, %struct.tegra_p2u** %7, align 8
  %27 = getelementptr inbounds %struct.tegra_p2u, %struct.tegra_p2u* %26, i32 0, i32 0
  store %struct.phy_provider* %25, %struct.phy_provider** %27, align 8
  %28 = load %struct.tegra_p2u*, %struct.tegra_p2u** %7, align 8
  %29 = getelementptr inbounds %struct.tegra_p2u, %struct.tegra_p2u* %28, i32 0, i32 0
  %30 = load %struct.phy_provider*, %struct.phy_provider** %29, align 8
  %31 = call i64 @IS_ERR(%struct.phy_provider* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.tegra_p2u*, %struct.tegra_p2u** %7, align 8
  %35 = getelementptr inbounds %struct.tegra_p2u, %struct.tegra_p2u* %34, i32 0, i32 0
  %36 = load %struct.phy_provider*, %struct.phy_provider** %35, align 8
  %37 = call i32 @PTR_ERR(%struct.phy_provider* %36)
  store i32 %37, i32* %2, align 4
  br label %68

38:                                               ; preds = %19
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.tegra_p2u*, %struct.tegra_p2u** %7, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.tegra_p2u* %40)
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call %struct.phy_provider* @devm_phy_create(%struct.device* %42, i32* null, i32* @ops)
  %44 = bitcast %struct.phy_provider* %43 to %struct.phy*
  store %struct.phy* %44, %struct.phy** %6, align 8
  %45 = load %struct.phy*, %struct.phy** %6, align 8
  %46 = bitcast %struct.phy* %45 to %struct.phy_provider*
  %47 = call i64 @IS_ERR(%struct.phy_provider* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.phy*, %struct.phy** %6, align 8
  %51 = bitcast %struct.phy* %50 to %struct.phy_provider*
  %52 = call i32 @PTR_ERR(%struct.phy_provider* %51)
  store i32 %52, i32* %2, align 4
  br label %68

53:                                               ; preds = %38
  %54 = load %struct.phy*, %struct.phy** %6, align 8
  %55 = bitcast %struct.phy* %54 to %struct.phy_provider*
  %56 = load %struct.tegra_p2u*, %struct.tegra_p2u** %7, align 8
  %57 = call i32 @phy_set_drvdata(%struct.phy_provider* %55, %struct.tegra_p2u* %56)
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* @of_phy_simple_xlate, align 4
  %60 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %58, i32 %59)
  store %struct.phy_provider* %60, %struct.phy_provider** %4, align 8
  %61 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %62 = call i64 @IS_ERR(%struct.phy_provider* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %66 = call i32 @PTR_ERR(%struct.phy_provider* %65)
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %49, %33, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.tegra_p2u* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_p2u*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.tegra_p2u*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
