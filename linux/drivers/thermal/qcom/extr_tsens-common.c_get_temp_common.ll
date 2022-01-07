; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_get_temp_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_get_temp_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32*, %struct.tsens_sensor* }
%struct.tsens_sensor = type { i64 }

@LAST_TEMP_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_temp_common(%struct.tsens_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsens_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tsens_sensor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tsens_priv* %0, %struct.tsens_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %12 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %11, i32 0, i32 1
  %13 = load %struct.tsens_sensor*, %struct.tsens_sensor** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %13, i64 %15
  store %struct.tsens_sensor* %16, %struct.tsens_sensor** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %18 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @LAST_TEMP_0, align 8
  %21 = load %struct.tsens_sensor*, %struct.tsens_sensor** %8, align 8
  %22 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %20, %23
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_field_read(i32 %26, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.tsens_sensor*, %struct.tsens_sensor** %8, align 8
  %35 = call i32 @code_to_degc(i32 %33, %struct.tsens_sensor* %34)
  %36 = mul nsw i32 %35, 1000
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @code_to_degc(i32, %struct.tsens_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
