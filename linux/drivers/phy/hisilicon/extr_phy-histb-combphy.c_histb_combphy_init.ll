; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-histb-combphy.c_histb_combphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-histb-combphy.c_histb_combphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.histb_combphy_priv = type { i64, i32, i32 }

@COMBPHY_CFG_REG = common dso_local global i64 0, align 8
@COMBPHY_BYPASS_CODEC = common dso_local global i32 0, align 4
@COMBPHY_CLKREF_OUT_OEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @histb_combphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histb_combphy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.histb_combphy_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.histb_combphy_priv* @phy_get_drvdata(%struct.phy* %7)
  store %struct.histb_combphy_priv* %8, %struct.histb_combphy_priv** %4, align 8
  %9 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %10 = call i32 @histb_combphy_set_mode(%struct.histb_combphy_priv* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %17 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @COMBPHY_CFG_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @COMBPHY_BYPASS_CODEC, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %28 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @COMBPHY_CFG_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %34 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_prepare_enable(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %15
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %69

41:                                               ; preds = %15
  %42 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %43 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @reset_control_deassert(i32 %44)
  %46 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %47 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @COMBPHY_CFG_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @COMBPHY_CLKREF_OUT_OEN, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %57 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @COMBPHY_CFG_REG, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = call i32 @mdelay(i32 5)
  %63 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %64 = call i32 @nano_register_write(%struct.histb_combphy_priv* %63, i32 1, i32 8)
  %65 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %66 = call i32 @nano_register_write(%struct.histb_combphy_priv* %65, i32 12, i32 9)
  %67 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %4, align 8
  %68 = call i32 @nano_register_write(%struct.histb_combphy_priv* %67, i32 26, i32 4)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %41, %39, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.histb_combphy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @histb_combphy_set_mode(%struct.histb_combphy_priv*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @nano_register_write(%struct.histb_combphy_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
