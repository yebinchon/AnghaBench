; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_tps80031_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_tps80031_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@RTC_YEAR_OFFSET = common dso_local global i32 0, align 4
@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@TPS80031_RTC_CTRL_REG = common dso_local global i32 0, align 4
@STOP_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Stop RTC failed, err = %d\0A\00", align 1
@TPS80031_SECONDS_REG = common dso_local global i32 0, align 4
@TPS80031_RTC_TIME_NUM_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"writing RTC_SECONDS_REG failed, err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Start RTC failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @tps80031_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %8 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bin2bcd(i32 %10)
  %12 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  store i32 %11, i32* %12, align 16
  %13 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bin2bcd(i32 %15)
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bin2bcd(i32 %20)
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bin2bcd(i32 %25)
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @bin2bcd(i32 %31)
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 4
  store i32 %32, i32* %33, align 16
  %34 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RTC_YEAR_OFFSET, align 4
  %38 = srem i32 %36, %37
  %39 = call i32 @bin2bcd(i32 %38)
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 5
  store i32 %39, i32* %40, align 4
  %41 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bin2bcd(i32 %43)
  %45 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 6
  store i32 %44, i32* %45, align 8
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load %struct.device*, %struct.device** %47, align 8
  %49 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %50 = load i32, i32* @TPS80031_RTC_CTRL_REG, align 4
  %51 = load i32, i32* @STOP_RTC, align 4
  %52 = call i32 @tps80031_clr_bits(%struct.device* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %2
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load %struct.device*, %struct.device** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %96

62:                                               ; preds = %2
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load %struct.device*, %struct.device** %64, align 8
  %66 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %67 = load i32, i32* @TPS80031_SECONDS_REG, align 4
  %68 = load i32, i32* @TPS80031_RTC_TIME_NUM_REGS, align 4
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %70 = call i32 @tps80031_writes(%struct.device* %65, i32 %66, i32 %67, i32 %68, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %62
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %96

78:                                               ; preds = %62
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = getelementptr inbounds %struct.device, %struct.device* %79, i32 0, i32 0
  %81 = load %struct.device*, %struct.device** %80, align 8
  %82 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %83 = load i32, i32* @TPS80031_RTC_CTRL_REG, align 4
  %84 = load i32, i32* @STOP_RTC, align 4
  %85 = call i32 @tps80031_set_bits(%struct.device* %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load %struct.device*, %struct.device** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %78
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %73, %55
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @tps80031_clr_bits(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tps80031_writes(%struct.device*, i32, i32, i32, i32*) #1

declare dso_local i32 @tps80031_set_bits(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
