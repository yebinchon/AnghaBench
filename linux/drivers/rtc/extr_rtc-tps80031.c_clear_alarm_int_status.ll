; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_clear_alarm_int_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_clear_alarm_int_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tps80031_rtc = type { i32 }

@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@TPS80031_RTC_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"reading RTC_STATUS failed. err = %d\0A\00", align 1
@ALARM_INT_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"clear Alarm INT failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tps80031_rtc*)* @clear_alarm_int_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_alarm_int_status(%struct.device* %0, %struct.tps80031_rtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tps80031_rtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tps80031_rtc* %1, %struct.tps80031_rtc** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %12 = load i32, i32* @TPS80031_RTC_STATUS_REG, align 4
  %13 = call i32 @tps80031_read(i32 %10, i32 %11, i32 %12, i32* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %26 = load i32, i32* @TPS80031_RTC_STATUS_REG, align 4
  %27 = load i32, i32* @ALARM_INT_STATUS, align 4
  %28 = call i32 @tps80031_set_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %31, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @tps80031_read(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tps80031_set_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
