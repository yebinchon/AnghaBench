; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3ss.c_uniphier_u3ssphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3ss.c_uniphier_u3ssphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.uniphier_u3ssphy_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @uniphier_u3ssphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3ssphy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.uniphier_u3ssphy_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.uniphier_u3ssphy_priv* @phy_get_drvdata(%struct.phy* %7)
  store %struct.uniphier_u3ssphy_priv* %8, %struct.uniphier_u3ssphy_priv** %4, align 8
  %9 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %10 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %19 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_prepare_enable(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %83

25:                                               ; preds = %17
  %26 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %27 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @reset_control_deassert(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %78

33:                                               ; preds = %25
  %34 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %35 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reset_control_deassert(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %73

41:                                               ; preds = %33
  %42 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %43 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %89

49:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %53 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %50
  %59 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %60 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %61 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @uniphier_u3ssphy_set_param(%struct.uniphier_u3ssphy_priv* %59, i32* %67)
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %50

72:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %89

73:                                               ; preds = %40
  %74 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %75 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @reset_control_assert(i32 %76)
  br label %78

78:                                               ; preds = %73, %32
  %79 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %80 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @clk_disable_unprepare(i32 %81)
  br label %83

83:                                               ; preds = %78, %24
  %84 = load %struct.uniphier_u3ssphy_priv*, %struct.uniphier_u3ssphy_priv** %4, align 8
  %85 = getelementptr inbounds %struct.uniphier_u3ssphy_priv, %struct.uniphier_u3ssphy_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @clk_disable_unprepare(i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %83, %72, %48, %15
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.uniphier_u3ssphy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @uniphier_u3ssphy_set_param(%struct.uniphier_u3ssphy_priv*, i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
