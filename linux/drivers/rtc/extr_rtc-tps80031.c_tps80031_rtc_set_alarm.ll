; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_tps80031_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps80031.c_tps80031_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@TPS80031_RTC_ALARM_NUM_REGS = common dso_local global i32 0, align 4
@RTC_YEAR_OFFSET = common dso_local global i32 0, align 4
@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@TPS80031_ALARM_SECONDS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Writing RTC_ALARM failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @tps80031_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load i32, i32* @TPS80031_RTC_ALARM_NUM_REGS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bin2bcd(i32 %17)
  %19 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bin2bcd(i32 %23)
  %25 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bin2bcd(i32 %29)
  %31 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bin2bcd(i32 %35)
  %37 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @bin2bcd(i32 %42)
  %44 = getelementptr inbounds i32, i32* %13, i64 4
  store i32 %43, i32* %44, align 16
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RTC_YEAR_OFFSET, align 4
  %50 = srem i32 %48, %49
  %51 = call i32 @bin2bcd(i32 %50)
  %52 = getelementptr inbounds i32, i32* %13, i64 5
  store i32 %51, i32* %52, align 4
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %57 = load i32, i32* @TPS80031_ALARM_SECONDS_REG, align 4
  %58 = load i32, i32* @TPS80031_RTC_ALARM_NUM_REGS, align 4
  %59 = call i32 @tps80031_writes(i32 %55, i32 %56, i32 %57, i32 %58, i32* %13)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %2
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %73

67:                                               ; preds = %2
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tps80031_rtc_alarm_irq_enable(%struct.device* %68, i32 %71)
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bin2bcd(i32) #2

declare dso_local i32 @tps80031_writes(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i32 @tps80031_rtc_alarm_irq_enable(%struct.device*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
