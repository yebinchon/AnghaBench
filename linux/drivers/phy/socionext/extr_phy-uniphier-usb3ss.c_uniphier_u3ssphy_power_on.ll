; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3ss.c_uniphier_u3ssphy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3ss.c_uniphier_u3ssphy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.uniphier_u3ssphy_priv = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @uniphier_u3ssphy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3ssphy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.uniphier_u3ssphy_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.uniphier_u3ssphy_priv* @phy_get_drvdata(%struct.phy* %6)
  store %struct.uniphier_u3ssphy_priv* %7, %struct.uniphier_u3ssphy_priv** %4, align 8
  %8 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %9 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %18 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_prepare_enable(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %57

24:                                               ; preds = %16
  %25 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %26 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @reset_control_deassert(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %34 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %39 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @regulator_enable(i64 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %47

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %32
  store i32 0, i32* %2, align 4
  br label %63

47:                                               ; preds = %44
  %48 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %49 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @reset_control_assert(i32 %50)
  br label %52

52:                                               ; preds = %47, %31
  %53 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %54 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_disable_unprepare(i32 %55)
  br label %57

57:                                               ; preds = %52, %23
  %58 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %59 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @clk_disable_unprepare(i32 %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %57, %46, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.uniphier_u3ssphy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
