; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3ss.c_uniphier_u3ssphy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3ss.c_uniphier_u3ssphy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.uniphier_u3ssphy_priv = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @uniphier_u3ssphy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3ssphy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.uniphier_u3ssphy_priv*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.uniphier_u3ssphy_priv* @phy_get_drvdata(%struct.phy* %4)
  store %struct.uniphier_u3ssphy_priv* %5, %struct.uniphier_u3ssphy_priv** %3, align 8
  %6 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %3, align 8
  %7 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %3, align 8
  %12 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @regulator_disable(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %3, align 8
  %17 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @reset_control_assert(i32 %18)
  %20 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %3, align 8
  %21 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  %24 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %3, align 8
  %25 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  ret i32 0
}

declare dso_local %struct.uniphier_u3ssphy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
