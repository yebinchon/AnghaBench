; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_get_clock_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_get_clock_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@RX8025_REG_DIGOFF = common dso_local global i32 0, align 4
@RX8025_ADJ_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*)* @rx8025_get_clock_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8025_get_clock_adjust(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.i2c_client* @to_i2c_client(%struct.device* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = load i32, i32* @RX8025_REG_DIGOFF, align 4
  %12 = call i32 @rx8025_read_reg(%struct.i2c_client* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 64
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 128
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %22, %20 ], [ %24, %23 ]
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @RX8025_ADJ_RESOLUTION, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, %37
  store i32 %40, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @rx8025_read_reg(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
