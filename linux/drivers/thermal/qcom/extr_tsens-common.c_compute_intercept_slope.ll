; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_compute_intercept_slope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_compute_intercept_slope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"sensor%d - data_point1:%#x data_point2:%#x\0A\00", align 1
@SLOPE_DEFAULT = common dso_local global i32 0, align 4
@TWO_PT_CALIB = common dso_local global i64 0, align 8
@SLOPE_FACTOR = common dso_local global i32 0, align 4
@CAL_DEGC_PT2 = common dso_local global i32 0, align 4
@CAL_DEGC_PT1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"offset:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_intercept_slope(%struct.tsens_priv* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.tsens_priv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tsens_priv* %0, %struct.tsens_priv** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %117, %4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %15 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %120

18:                                               ; preds = %12
  %19 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %20 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i64*, i64** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %27, i64 %32)
  %34 = load i32, i32* @SLOPE_DEFAULT, align 4
  %35 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %36 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %34, i32* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @TWO_PT_CALIB, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %18
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %50, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* @SLOPE_FACTOR, align 4
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @CAL_DEGC_PT2, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @CAL_DEGC_PT1, align 8
  %64 = sub nsw i64 %62, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sdiv i32 %66, %67
  %69 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %70 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 8
  br label %76

76:                                               ; preds = %45, %18
  %77 = load i64*, i64** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* @SLOPE_FACTOR, align 4
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %81, %83
  %85 = load i64, i64* @CAL_DEGC_PT1, align 8
  %86 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %87 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %85, %94
  %96 = sub nsw i64 %84, %95
  %97 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %98 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i64 %96, i64* %103, align 8
  %104 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %105 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %108 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %76
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %12

120:                                              ; preds = %12
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
