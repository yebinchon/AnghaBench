; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-sata.c_phy_mvebu_sata_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-sata.c_phy_mvebu_sata_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.priv = type { %struct.phy_provider*, %struct.phy_provider* }
%struct.phy = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@phy_mvebu_sata_ops = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @phy_mvebu_sata_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_mvebu_sata_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.priv* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.priv* %11, %struct.priv** %6, align 8
  %12 = load %struct.priv*, %struct.priv** %6, align 8
  %13 = icmp ne %struct.priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call %struct.phy_provider* @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.priv*, %struct.priv** %6, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 1
  store %struct.phy_provider* %24, %struct.phy_provider** %26, align 8
  %27 = load %struct.priv*, %struct.priv** %6, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  %29 = load %struct.phy_provider*, %struct.phy_provider** %28, align 8
  %30 = call i64 @IS_ERR(%struct.phy_provider* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.priv*, %struct.priv** %6, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 1
  %35 = load %struct.phy_provider*, %struct.phy_provider** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.phy_provider* %35)
  store i32 %36, i32* %2, align 4
  br label %85

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call %struct.phy_provider* @devm_clk_get(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.priv*, %struct.priv** %6, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  store %struct.phy_provider* %40, %struct.phy_provider** %42, align 8
  %43 = load %struct.priv*, %struct.priv** %6, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 0
  %45 = load %struct.phy_provider*, %struct.phy_provider** %44, align 8
  %46 = call i64 @IS_ERR(%struct.phy_provider* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.priv*, %struct.priv** %6, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 0
  %51 = load %struct.phy_provider*, %struct.phy_provider** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.phy_provider* %51)
  store i32 %52, i32* %2, align 4
  br label %85

53:                                               ; preds = %37
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call %struct.phy_provider* @devm_phy_create(i32* %55, i32* null, i32* @phy_mvebu_sata_ops)
  %57 = bitcast %struct.phy_provider* %56 to %struct.phy*
  store %struct.phy* %57, %struct.phy** %7, align 8
  %58 = load %struct.phy*, %struct.phy** %7, align 8
  %59 = bitcast %struct.phy* %58 to %struct.phy_provider*
  %60 = call i64 @IS_ERR(%struct.phy_provider* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load %struct.phy*, %struct.phy** %7, align 8
  %64 = bitcast %struct.phy* %63 to %struct.phy_provider*
  %65 = call i32 @PTR_ERR(%struct.phy_provider* %64)
  store i32 %65, i32* %2, align 4
  br label %85

66:                                               ; preds = %53
  %67 = load %struct.phy*, %struct.phy** %7, align 8
  %68 = bitcast %struct.phy* %67 to %struct.phy_provider*
  %69 = load %struct.priv*, %struct.priv** %6, align 8
  %70 = call i32 @phy_set_drvdata(%struct.phy_provider* %68, %struct.priv* %69)
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* @of_phy_simple_xlate, align 4
  %74 = call %struct.phy_provider* @devm_of_phy_provider_register(i32* %72, i32 %73)
  store %struct.phy_provider* %74, %struct.phy_provider** %4, align 8
  %75 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %76 = call i64 @IS_ERR(%struct.phy_provider* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %80 = call i32 @PTR_ERR(%struct.phy_provider* %79)
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %66
  %82 = load %struct.phy*, %struct.phy** %7, align 8
  %83 = bitcast %struct.phy* %82 to %struct.phy_provider*
  %84 = call i32 @phy_mvebu_sata_power_off(%struct.phy_provider* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %78, %62, %48, %32, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local %struct.phy_provider* @devm_clk_get(i32*, i8*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(i32*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(i32*, i32) #1

declare dso_local i32 @phy_mvebu_sata_power_off(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
