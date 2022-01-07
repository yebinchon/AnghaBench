; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-palmas.c_palmas_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.palmas = type { i32 }

@PALMAS_NUM_TIME_REGS = common dso_local global i32 0, align 4
@PALMAS_RTC_BASE = common dso_local global i32 0, align 4
@PALMAS_ALARM_SECONDS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RTC_ALARM_SECONDS read failed, err = %d\0A\00", align 1
@PALMAS_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"RTC_INTERRUPTS reg read failed, err = %d\0A\00", align 1
@PALMAS_RTC_INTERRUPTS_REG_IT_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @palmas_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.palmas*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load i32, i32* @PALMAS_NUM_TIME_REGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.palmas* @dev_get_drvdata(i32 %18)
  store %struct.palmas* %19, %struct.palmas** %9, align 8
  %20 = load %struct.palmas*, %struct.palmas** %9, align 8
  %21 = load i32, i32* @PALMAS_RTC_BASE, align 4
  %22 = load i32, i32* @PALMAS_ALARM_SECONDS_REG, align 4
  %23 = load i32, i32* @PALMAS_NUM_TIME_REGS, align 4
  %24 = call i32 @palmas_bulk_read(%struct.palmas* %20, i32 %21, i32 %22, i8* %15, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %92

32:                                               ; preds = %2
  %33 = getelementptr inbounds i8, i8* %15, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = call i8* @bcd2bin(i8 zeroext %34)
  %36 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %37 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  store i8* %35, i8** %38, align 8
  %39 = getelementptr inbounds i8, i8* %15, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = call i8* @bcd2bin(i8 zeroext %40)
  %42 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %43 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i8* %41, i8** %44, align 8
  %45 = getelementptr inbounds i8, i8* %15, i64 2
  %46 = load i8, i8* %45, align 2
  %47 = call i8* @bcd2bin(i8 zeroext %46)
  %48 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %49 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = getelementptr inbounds i8, i8* %15, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = call i8* @bcd2bin(i8 zeroext %52)
  %54 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %55 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i8* %53, i8** %56, align 8
  %57 = getelementptr inbounds i8, i8* %15, i64 4
  %58 = load i8, i8* %57, align 4
  %59 = call i8* @bcd2bin(i8 zeroext %58)
  %60 = getelementptr i8, i8* %59, i64 -1
  %61 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = getelementptr inbounds i8, i8* %15, i64 5
  %65 = load i8, i8* %64, align 1
  %66 = call i8* @bcd2bin(i8 zeroext %65)
  %67 = getelementptr i8, i8* %66, i64 100
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load %struct.palmas*, %struct.palmas** %9, align 8
  %72 = load i32, i32* @PALMAS_RTC_BASE, align 4
  %73 = load i32, i32* @PALMAS_RTC_INTERRUPTS_REG, align 4
  %74 = call i32 @palmas_read(%struct.palmas* %71, i32 %72, i32 %73, i32* %8)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %32
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %92

82:                                               ; preds = %32
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PALMAS_RTC_INTERRUPTS_REG_IT_ALARM, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %90, %77, %27
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.palmas* @dev_get_drvdata(i32) #2

declare dso_local i32 @palmas_bulk_read(%struct.palmas*, i32, i32, i8*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i8* @bcd2bin(i8 zeroext) #2

declare dso_local i32 @palmas_read(%struct.palmas*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
