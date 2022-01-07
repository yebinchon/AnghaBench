; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }
%struct.palmas = type { i32 }

@PALMAS_NUM_TIME_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Disable RTC alarm failed\0A\00", align 1
@PALMAS_RTC_BASE = common dso_local global i32 0, align 4
@PALMAS_ALARM_SECONDS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ALARM_SECONDS_REG write failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @palmas_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.palmas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load i32, i32* @PALMAS_NUM_TIME_REGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.palmas* @dev_get_drvdata(i32 %17)
  store %struct.palmas* %18, %struct.palmas** %8, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @palmas_rtc_alarm_irq_enable(%struct.device* %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

27:                                               ; preds = %2
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call zeroext i8 @bin2bcd(i64 %31)
  %33 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %32, i8* %33, align 16
  %34 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %35 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call zeroext i8 @bin2bcd(i64 %37)
  %39 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %38, i8* %39, align 1
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call zeroext i8 @bin2bcd(i64 %43)
  %45 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %44, i8* %45, align 2
  %46 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %47 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call zeroext i8 @bin2bcd(i64 %49)
  %51 = getelementptr inbounds i8, i8* %14, i64 3
  store i8 %50, i8* %51, align 1
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = call zeroext i8 @bin2bcd(i64 %56)
  %58 = getelementptr inbounds i8, i8* %14, i64 4
  store i8 %57, i8* %58, align 4
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 100
  %64 = call zeroext i8 @bin2bcd(i64 %63)
  %65 = getelementptr inbounds i8, i8* %14, i64 5
  store i8 %64, i8* %65, align 1
  %66 = load %struct.palmas*, %struct.palmas** %8, align 8
  %67 = load i32, i32* @PALMAS_RTC_BASE, align 4
  %68 = load i32, i32* @PALMAS_ALARM_SECONDS_REG, align 4
  %69 = load i32, i32* @PALMAS_NUM_TIME_REGS, align 4
  %70 = call i32 @palmas_bulk_write(%struct.palmas* %66, i32 %67, i32 %68, i8* %14, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %27
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

78:                                               ; preds = %27
  %79 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @palmas_rtc_alarm_irq_enable(%struct.device* %84, i32 1)
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %73, %23
  %89 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #2

declare dso_local i32 @palmas_rtc_alarm_irq_enable(%struct.device*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local zeroext i8 @bin2bcd(i64) #2

declare dso_local i32 @palmas_bulk_write(%struct.palmas*, i32, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
