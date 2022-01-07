; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_check_validity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rx8025.c_rx8025_check_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rx8025_data = type { i32 }

@RX8025_REG_CTRL2 = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL2_VDET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"power voltage drop detected\0A\00", align 1
@RX8025_BIT_CTRL2_PON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"power-on reset detected, date is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RX8025_BIT_CTRL2_XST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"crystal stopped, date is invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rx8025_check_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8025_check_validity(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rx8025_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.rx8025_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.rx8025_data* %7, %struct.rx8025_data** %4, align 8
  %8 = load %struct.rx8025_data*, %struct.rx8025_data** %4, align 8
  %9 = getelementptr inbounds %struct.rx8025_data, %struct.rx8025_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RX8025_REG_CTRL2, align 4
  %12 = call i32 @rx8025_read_reg(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @RX8025_BIT_CTRL2_VDET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @dev_warn(%struct.device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RX8025_BIT_CTRL2_PON, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @RX8025_BIT_CTRL2_XST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %40, %30, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.rx8025_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rx8025_read_reg(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
