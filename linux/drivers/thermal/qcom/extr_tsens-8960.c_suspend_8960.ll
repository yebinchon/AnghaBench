; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_suspend_8960.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_suspend_8960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.regmap = type { i32 }

@THRESHOLD_ADDR = common dso_local global i32 0, align 4
@CNTL_ADDR = common dso_local global i32 0, align 4
@SLP_CLK_ENA = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@SLP_CLK_ENA_8660 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*)* @suspend_8960 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_8960(%struct.tsens_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsens_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  store %struct.tsens_priv* %0, %struct.tsens_priv** %3, align 8
  %7 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %8 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %7, i32 0, i32 2
  %9 = load %struct.regmap*, %struct.regmap** %8, align 8
  store %struct.regmap* %9, %struct.regmap** %6, align 8
  %10 = load %struct.regmap*, %struct.regmap** %6, align 8
  %11 = load i32, i32* @THRESHOLD_ADDR, align 4
  %12 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @regmap_read(%struct.regmap* %10, i32 %11, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.regmap*, %struct.regmap** %6, align 8
  %22 = load i32, i32* @CNTL_ADDR, align 4
  %23 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %24 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @regmap_read(%struct.regmap* %21, i32 %22, i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %54

31:                                               ; preds = %20
  %32 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %33 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @SLP_CLK_ENA, align 4
  %38 = load i32, i32* @EN, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @SLP_CLK_ENA_8660, align 4
  %42 = load i32, i32* @EN, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.regmap*, %struct.regmap** %6, align 8
  %46 = load i32, i32* @CNTL_ADDR, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @regmap_update_bits(%struct.regmap* %45, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %51, %29, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
