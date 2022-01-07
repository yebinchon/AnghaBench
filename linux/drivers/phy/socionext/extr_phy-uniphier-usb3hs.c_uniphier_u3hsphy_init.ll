; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.uniphier_u3hsphy_priv = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32*, i64, i64 }

@HSPHY_CFG0 = common dso_local global i64 0, align 8
@HSPHY_CFG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @uniphier_u3hsphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u3hsphy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.uniphier_u3hsphy_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.uniphier_u3hsphy_priv* @phy_get_drvdata(%struct.phy* %9)
  store %struct.uniphier_u3hsphy_priv* %10, %struct.uniphier_u3hsphy_priv** %4, align 8
  %11 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %12 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %107

19:                                               ; preds = %1
  %20 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %21 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @reset_control_deassert(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %101

27:                                               ; preds = %19
  %28 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %29 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %36 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %107

42:                                               ; preds = %34, %27
  %43 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %44 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %5, align 8
  %48 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %49 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  %53 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %54 = call i32 @uniphier_u3hsphy_update_config(%struct.uniphier_u3hsphy_priv* %53, i64* %5)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %96

58:                                               ; preds = %42
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %61 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HSPHY_CFG0, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i64 %59, i64 %64)
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %68 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HSPHY_CFG1, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i64 %66, i64 %71)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %92, %58
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %76 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %73
  %82 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %83 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %84 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @uniphier_u3hsphy_set_param(%struct.uniphier_u3hsphy_priv* %82, i32* %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %73

95:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %107

96:                                               ; preds = %57
  %97 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %98 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @reset_control_assert(i32 %99)
  br label %101

101:                                              ; preds = %96, %26
  %102 = load %struct.uniphier_u3hsphy_priv*, %struct.uniphier_u3hsphy_priv** %4, align 8
  %103 = getelementptr inbounds %struct.uniphier_u3hsphy_priv, %struct.uniphier_u3hsphy_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @clk_disable_unprepare(i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %101, %95, %41, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.uniphier_u3hsphy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @uniphier_u3hsphy_update_config(%struct.uniphier_u3hsphy_priv*, i64*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @uniphier_u3hsphy_set_param(%struct.uniphier_u3hsphy_priv*, i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
