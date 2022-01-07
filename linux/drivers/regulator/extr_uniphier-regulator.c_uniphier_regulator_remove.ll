; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_uniphier-regulator.c_uniphier_regulator_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_uniphier-regulator.c_uniphier_regulator_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uniphier_regulator_priv = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_regulator_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_regulator_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uniphier_regulator_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.uniphier_regulator_priv* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.uniphier_regulator_priv* %6, %struct.uniphier_regulator_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.uniphier_regulator_priv*, %struct.uniphier_regulator_priv** %3, align 8
  %10 = getelementptr inbounds %struct.uniphier_regulator_priv, %struct.uniphier_regulator_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %7
  %16 = load %struct.uniphier_regulator_priv*, %struct.uniphier_regulator_priv** %3, align 8
  %17 = getelementptr inbounds %struct.uniphier_regulator_priv, %struct.uniphier_regulator_priv* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @reset_control_assert(i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.uniphier_regulator_priv*, %struct.uniphier_regulator_priv** %3, align 8
  %29 = getelementptr inbounds %struct.uniphier_regulator_priv, %struct.uniphier_regulator_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uniphier_regulator_priv*, %struct.uniphier_regulator_priv** %3, align 8
  %34 = getelementptr inbounds %struct.uniphier_regulator_priv, %struct.uniphier_regulator_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_bulk_disable_unprepare(i32 %32, i32 %35)
  ret i32 0
}

declare dso_local %struct.uniphier_regulator_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
