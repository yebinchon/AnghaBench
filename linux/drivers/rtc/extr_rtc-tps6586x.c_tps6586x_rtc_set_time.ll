; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps6586x.c_tps6586x_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps6586x.c_tps6586x_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@RTC_CTRL = common dso_local global i32 0, align 4
@RTC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to clear RTC_ENABLE\0A\00", align 1
@RTC_COUNT4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to program new time\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to set RTC_ENABLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @tps6586x_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [5 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.device* @to_tps6586x_dev(%struct.device* %11)
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %14 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = shl i64 %15, 10
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = lshr i64 %17, 32
  %19 = and i64 %18, 255
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  store i64 %19, i64* %20, align 16
  %21 = load i64, i64* %7, align 8
  %22 = lshr i64 %21, 24
  %23 = and i64 %22, 255
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 1
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = lshr i64 %25, 16
  %27 = and i64 %26, 255
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 2
  store i64 %27, i64* %28, align 16
  %29 = load i64, i64* %7, align 8
  %30 = lshr i64 %29, 8
  %31 = and i64 %30, 255
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 3
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, 255
  %35 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 4
  store i64 %34, i64* %35, align 16
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i32, i32* @RTC_CTRL, align 4
  %38 = load i32, i32* @RTC_ENABLE, align 4
  %39 = call i32 @tps6586x_clr_bits(%struct.device* %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %69

46:                                               ; preds = %2
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* @RTC_COUNT4, align 4
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %9, i64 0, i64 0
  %50 = call i32 @tps6586x_writes(%struct.device* %47, i32 %48, i32 40, i64* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %46
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load i32, i32* @RTC_CTRL, align 4
  %60 = load i32, i32* @RTC_ENABLE, align 4
  %61 = call i32 @tps6586x_set_bits(%struct.device* %58, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %64, %53, %42
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.device* @to_tps6586x_dev(%struct.device*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @tps6586x_clr_bits(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @tps6586x_writes(%struct.device*, i32, i32, i64*) #1

declare dso_local i32 @tps6586x_set_bits(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
