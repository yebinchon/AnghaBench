; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_is_function_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_is_function_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pinctrl = type { i32, %struct.stm32_desc_pin* }
%struct.stm32_desc_pin = type { %struct.TYPE_2__, %struct.stm32_desc_function* }
%struct.TYPE_2__ = type { i64 }
%struct.stm32_desc_function = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pinctrl*, i64, i64)* @stm32_pctrl_is_function_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pctrl_is_function_valid(%struct.stm32_pinctrl* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_pinctrl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stm32_desc_pin*, align 8
  %10 = alloca %struct.stm32_desc_function*, align 8
  store %struct.stm32_pinctrl* %0, %struct.stm32_pinctrl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %56, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %11
  %18 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %5, align 8
  %19 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %18, i32 0, i32 1
  %20 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %20, i64 %22
  store %struct.stm32_desc_pin* %23, %struct.stm32_desc_pin** %9, align 8
  %24 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %9, align 8
  %25 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %24, i32 0, i32 1
  %26 = load %struct.stm32_desc_function*, %struct.stm32_desc_function** %25, align 8
  store %struct.stm32_desc_function* %26, %struct.stm32_desc_function** %10, align 8
  %27 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %9, align 8
  %28 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %56

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %52, %34
  %36 = load %struct.stm32_desc_function*, %struct.stm32_desc_function** %10, align 8
  %37 = icmp ne %struct.stm32_desc_function* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.stm32_desc_function*, %struct.stm32_desc_function** %10, align 8
  %40 = getelementptr inbounds %struct.stm32_desc_function, %struct.stm32_desc_function* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ false, %35 ], [ %42, %38 ]
  br i1 %44, label %45, label %55

45:                                               ; preds = %43
  %46 = load %struct.stm32_desc_function*, %struct.stm32_desc_function** %10, align 8
  %47 = getelementptr inbounds %struct.stm32_desc_function, %struct.stm32_desc_function* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %60

52:                                               ; preds = %45
  %53 = load %struct.stm32_desc_function*, %struct.stm32_desc_function** %10, align 8
  %54 = getelementptr inbounds %struct.stm32_desc_function, %struct.stm32_desc_function* %53, i32 1
  store %struct.stm32_desc_function* %54, %struct.stm32_desc_function** %10, align 8
  br label %35

55:                                               ; preds = %43
  br label %59

56:                                               ; preds = %33
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %11

59:                                               ; preds = %55, %11
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
