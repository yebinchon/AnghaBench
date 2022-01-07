; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_code_to_degc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_code_to_degc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_sensor = type { i32, i32 }

@SLOPE_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tsens_sensor*)* @code_to_degc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @code_to_degc(i32 %0, %struct.tsens_sensor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tsens_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tsens_sensor* %1, %struct.tsens_sensor** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SLOPE_FACTOR, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load %struct.tsens_sensor*, %struct.tsens_sensor** %4, align 8
  %12 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.tsens_sensor*, %struct.tsens_sensor** %4, align 8
  %16 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
