; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-pcie.c_uniphier_pciephy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-pcie.c_uniphier_pciephy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.uniphier_pciephy_priv = type { i32, i32 }

@PCL_PHY_R00 = common dso_local global i32 0, align 4
@RX_EQ_ADJ_EN = common dso_local global i32 0, align 4
@PCL_PHY_R06 = common dso_local global i32 0, align 4
@RX_EQ_ADJ = common dso_local global i32 0, align 4
@RX_EQ_ADJ_VAL = common dso_local global i32 0, align 4
@PCL_PHY_R26 = common dso_local global i32 0, align 4
@VCO_CTRL = common dso_local global i32 0, align 4
@VCO_CTRL_INIT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @uniphier_pciephy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_pciephy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.uniphier_pciephy_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.uniphier_pciephy_priv* @phy_get_drvdata(%struct.phy* %6)
  store %struct.uniphier_pciephy_priv* %7, %struct.uniphier_pciephy_priv** %4, align 8
  %8 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %9 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %18 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @reset_control_deassert(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %48

24:                                               ; preds = %16
  %25 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %26 = load i32, i32* @PCL_PHY_R00, align 4
  %27 = load i32, i32* @RX_EQ_ADJ_EN, align 4
  %28 = load i32, i32* @RX_EQ_ADJ_EN, align 4
  %29 = call i32 @uniphier_pciephy_set_param(%struct.uniphier_pciephy_priv* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %31 = load i32, i32* @PCL_PHY_R06, align 4
  %32 = load i32, i32* @RX_EQ_ADJ, align 4
  %33 = load i32, i32* @RX_EQ_ADJ, align 4
  %34 = load i32, i32* @RX_EQ_ADJ_VAL, align 4
  %35 = call i32 @FIELD_PREP(i32 %33, i32 %34)
  %36 = call i32 @uniphier_pciephy_set_param(%struct.uniphier_pciephy_priv* %30, i32 %31, i32 %32, i32 %35)
  %37 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %38 = load i32, i32* @PCL_PHY_R26, align 4
  %39 = load i32, i32* @VCO_CTRL, align 4
  %40 = load i32, i32* @VCO_CTRL, align 4
  %41 = load i32, i32* @VCO_CTRL_INIT_VAL, align 4
  %42 = call i32 @FIELD_PREP(i32 %40, i32 %41)
  %43 = call i32 @uniphier_pciephy_set_param(%struct.uniphier_pciephy_priv* %37, i32 %38, i32 %39, i32 %42)
  %44 = call i32 @usleep_range(i32 1, i32 10)
  %45 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %46 = call i32 @uniphier_pciephy_deassert(%struct.uniphier_pciephy_priv* %45)
  %47 = call i32 @usleep_range(i32 1, i32 10)
  store i32 0, i32* %2, align 4
  br label %54

48:                                               ; preds = %23
  %49 = load %struct.uniphier_pciephy_priv*, %struct.uniphier_pciephy_priv** %4, align 8
  %50 = getelementptr inbounds %struct.uniphier_pciephy_priv, %struct.uniphier_pciephy_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %24, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.uniphier_pciephy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @uniphier_pciephy_set_param(%struct.uniphier_pciephy_priv*, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @uniphier_pciephy_deassert(%struct.uniphier_pciephy_priv*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
