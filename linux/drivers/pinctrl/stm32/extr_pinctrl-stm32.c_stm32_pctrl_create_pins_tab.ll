; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_create_pins_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_create_pins_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pinctrl = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.stm32_desc_pin* }
%struct.stm32_desc_pin = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pinctrl*, %struct.stm32_desc_pin*)* @stm32_pctrl_create_pins_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pctrl_create_pins_tab(%struct.stm32_pinctrl* %0, %struct.stm32_desc_pin* %1) #0 {
  %3 = alloca %struct.stm32_pinctrl*, align 8
  %4 = alloca %struct.stm32_desc_pin*, align 8
  %5 = alloca %struct.stm32_desc_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stm32_pinctrl* %0, %struct.stm32_pinctrl** %3, align 8
  store %struct.stm32_desc_pin* %1, %struct.stm32_desc_pin** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %54, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %3, align 8
  %11 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %8
  %17 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %21, i64 %23
  store %struct.stm32_desc_pin* %24, %struct.stm32_desc_pin** %5, align 8
  %25 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %3, align 8
  %31 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %54

39:                                               ; preds = %29, %16
  %40 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %5, align 8
  %41 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %5, align 8
  %46 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %4, align 8
  %49 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %4, align 8
  %51 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %50, i32 1
  store %struct.stm32_desc_pin* %51, %struct.stm32_desc_pin** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %39, %38
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %8

57:                                               ; preds = %8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
