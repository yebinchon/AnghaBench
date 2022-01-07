; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-pcie.c_uniphier_pciephy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-pcie.c_uniphier_pciephy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_pciephy_priv = type { %struct.TYPE_2__*, %struct.regmap*, %struct.regmap*, %struct.regmap*, %struct.device* }
%struct.TYPE_2__ = type { i64 }
%struct.regmap = type { i32 }
%struct.phy_provider = type { i32 }
%struct.resource = type { i32 }
%struct.phy = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@uniphier_pciephy_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"socionext,syscon\00", align 1
@SG_USBPCIESEL = common dso_local global i32 0, align 4
@SG_USBPCIESEL_PCIE = common dso_local global i32 0, align 4
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_pciephy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pciephy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uniphier_pciephy_priv*, align 8
  %5 = alloca %struct.phy_provider*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.uniphier_pciephy_priv* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.uniphier_pciephy_priv* %14, %struct.uniphier_pciephy_priv** %4, align 8
  %15 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %16 = icmp ne %struct.uniphier_pciephy_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %134

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.TYPE_2__* @of_device_get_match_data(%struct.device* %21)
  %23 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %24 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %23, i32 0, i32 0
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %26 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %134

36:                                               ; preds = %20
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %39 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %38, i32 0, i32 4
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 0)
  store %struct.resource* %42, %struct.resource** %8, align 8
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.resource*, %struct.resource** %8, align 8
  %45 = call %struct.regmap* @devm_ioremap_resource(%struct.device* %43, %struct.resource* %44)
  %46 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %47 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %46, i32 0, i32 3
  store %struct.regmap* %45, %struct.regmap** %47, align 8
  %48 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %49 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %48, i32 0, i32 3
  %50 = load %struct.regmap*, %struct.regmap** %49, align 8
  %51 = call i64 @IS_ERR(%struct.regmap* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %36
  %54 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %55 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %54, i32 0, i32 3
  %56 = load %struct.regmap*, %struct.regmap** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.regmap* %56)
  store i32 %57, i32* %2, align 4
  br label %134

58:                                               ; preds = %36
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call %struct.regmap* @devm_clk_get(%struct.device* %59, i32* null)
  %61 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %62 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %61, i32 0, i32 2
  store %struct.regmap* %60, %struct.regmap** %62, align 8
  %63 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %64 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %63, i32 0, i32 2
  %65 = load %struct.regmap*, %struct.regmap** %64, align 8
  %66 = call i64 @IS_ERR(%struct.regmap* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %70 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %69, i32 0, i32 2
  %71 = load %struct.regmap*, %struct.regmap** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.regmap* %71)
  store i32 %72, i32* %2, align 4
  br label %134

73:                                               ; preds = %58
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call %struct.regmap* @devm_reset_control_get_shared(%struct.device* %74, i32* null)
  %76 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %77 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %76, i32 0, i32 1
  store %struct.regmap* %75, %struct.regmap** %77, align 8
  %78 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %79 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %78, i32 0, i32 1
  %80 = load %struct.regmap*, %struct.regmap** %79, align 8
  %81 = call i64 @IS_ERR(%struct.regmap* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %85 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %84, i32 0, i32 1
  %86 = load %struct.regmap*, %struct.regmap** %85, align 8
  %87 = call i32 @PTR_ERR(%struct.regmap* %86)
  store i32 %87, i32* %2, align 4
  br label %134

88:                                               ; preds = %73
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.regmap* @devm_phy_create(%struct.device* %89, i32 %92, i32* @uniphier_pciephy_ops)
  %94 = bitcast %struct.regmap* %93 to %struct.phy*
  store %struct.phy* %94, %struct.phy** %9, align 8
  %95 = load %struct.phy*, %struct.phy** %9, align 8
  %96 = bitcast %struct.phy* %95 to %struct.regmap*
  %97 = call i64 @IS_ERR(%struct.regmap* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load %struct.phy*, %struct.phy** %9, align 8
  %101 = bitcast %struct.phy* %100 to %struct.regmap*
  %102 = call i32 @PTR_ERR(%struct.regmap* %101)
  store i32 %102, i32* %2, align 4
  br label %134

103:                                              ; preds = %88
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = getelementptr inbounds %struct.device, %struct.device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %107, %struct.regmap** %7, align 8
  %108 = load %struct.regmap*, %struct.regmap** %7, align 8
  %109 = call i64 @IS_ERR(%struct.regmap* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %103
  %112 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %113 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load %struct.regmap*, %struct.regmap** %7, align 8
  %120 = load i32, i32* @SG_USBPCIESEL, align 4
  %121 = load i32, i32* @SG_USBPCIESEL_PCIE, align 4
  %122 = load i32, i32* @SG_USBPCIESEL_PCIE, align 4
  %123 = call i32 @regmap_update_bits(%struct.regmap* %119, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %111, %103
  %125 = load %struct.phy*, %struct.phy** %9, align 8
  %126 = bitcast %struct.phy* %125 to %struct.regmap*
  %127 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %128 = call i32 @phy_set_drvdata(%struct.regmap* %126, %struct.uniphier_pciephy_priv* %127)
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load i32, i32* @of_phy_simple_xlate, align 4
  %131 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %129, i32 %130)
  store %struct.phy_provider* %131, %struct.phy_provider** %5, align 8
  %132 = load %struct.phy_provider*, %struct.phy_provider** %5, align 8
  %133 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %132)
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %124, %99, %83, %68, %53, %33, %17
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.uniphier_pciephy_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.regmap* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local %struct.regmap* @devm_reset_control_get_shared(%struct.device*, i32*) #1

declare dso_local %struct.regmap* @devm_phy_create(%struct.device*, i32, i32*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @phy_set_drvdata(%struct.regmap*, %struct.uniphier_pciephy_priv*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
