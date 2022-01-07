; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_resume_8960.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_resume_8960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.regmap = type { i32 }

@CNTL_ADDR = common dso_local global i32 0, align 4
@SW_RST = common dso_local global i32 0, align 4
@CONFIG_ADDR = common dso_local global i32 0, align 4
@CONFIG_MASK = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@THRESHOLD_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*)* @resume_8960 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_8960(%struct.tsens_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsens_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  store %struct.tsens_priv* %0, %struct.tsens_priv** %3, align 8
  %6 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %6, i32 0, i32 2
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %5, align 8
  %9 = load %struct.regmap*, %struct.regmap** %5, align 8
  %10 = load i32, i32* @CNTL_ADDR, align 4
  %11 = load i32, i32* @SW_RST, align 4
  %12 = load i32, i32* @SW_RST, align 4
  %13 = call i32 @regmap_update_bits(%struct.regmap* %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.regmap*, %struct.regmap** %5, align 8
  %25 = load i32, i32* @CONFIG_ADDR, align 4
  %26 = load i32, i32* @CONFIG_MASK, align 4
  %27 = load i32, i32* @CONFIG, align 4
  %28 = call i32 @regmap_update_bits(%struct.regmap* %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %59

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.regmap*, %struct.regmap** %5, align 8
  %36 = load i32, i32* @THRESHOLD_ADDR, align 4
  %37 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %38 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_write(%struct.regmap* %35, i32 %36, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %59

46:                                               ; preds = %34
  %47 = load %struct.regmap*, %struct.regmap** %5, align 8
  %48 = load i32, i32* @CNTL_ADDR, align 4
  %49 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %50 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @regmap_write(%struct.regmap* %47, i32 %48, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %56, %44, %31, %16
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
