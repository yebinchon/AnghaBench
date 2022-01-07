; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_battok_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_battok_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32 }

@BATT_OK_MIN = common dso_local global i32 0, align 4
@BATT_OK_INCREMENT = common dso_local global i32 0, align 4
@BATT_OK_MAX_NR_INCREMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*, i32)* @ab8500_fg_battok_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_fg_battok_calc(%struct.ab8500_fg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ab8500_fg*, align 8
  %5 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @BATT_OK_MIN, align 4
  %8 = load i32, i32* @BATT_OK_INCREMENT, align 4
  %9 = load i32, i32* @BATT_OK_MAX_NR_INCREMENTS, align 4
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 %7, %10
  %12 = icmp sgt i32 %6, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @BATT_OK_MAX_NR_INCREMENTS, align 4
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BATT_OK_MIN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @BATT_OK_MIN, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @BATT_OK_INCREMENT, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %19, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
