; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_mpp4_ctrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_mpp4_ctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { i32 }

@mpp4_base = common dso_local global i32 0, align 4
@CAM_GPIO_SEL = common dso_local global i64 0, align 8
@SD0_GPIO_SEL = common dso_local global i64 0, align 8
@SD1_GPIO_SEL = common dso_local global i64 0, align 8
@SPI_GPIO_SEL = common dso_local global i64 0, align 8
@UART1_GPIO_SEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mpp_ctrl_data*, i32, i64*)* @dove_mpp4_ctrl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_mpp4_ctrl_get(%struct.mvebu_mpp_ctrl_data* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* @mpp4_base, align 4
  %11 = call i64 @readl(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %23 [
    i32 24, label %13
    i32 40, label %15
    i32 46, label %17
    i32 58, label %19
    i32 62, label %21
  ]

13:                                               ; preds = %3
  %14 = load i64, i64* @CAM_GPIO_SEL, align 8
  store i64 %14, i64* %9, align 8
  br label %26

15:                                               ; preds = %3
  %16 = load i64, i64* @SD0_GPIO_SEL, align 8
  store i64 %16, i64* %9, align 8
  br label %26

17:                                               ; preds = %3
  %18 = load i64, i64* @SD1_GPIO_SEL, align 8
  store i64 %18, i64* %9, align 8
  br label %26

19:                                               ; preds = %3
  %20 = load i64, i64* @SPI_GPIO_SEL, align 8
  store i64 %20, i64* %9, align 8
  br label %26

21:                                               ; preds = %3
  %22 = load i64, i64* @UART1_GPIO_SEL, align 8
  store i64 %22, i64* %9, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %21, %19, %17, %15, %13
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
