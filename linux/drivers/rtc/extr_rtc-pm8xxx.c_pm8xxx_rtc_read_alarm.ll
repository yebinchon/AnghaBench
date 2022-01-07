; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pm8xxx.c_pm8xxx_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32 }
%struct.pm8xxx_rtc = type { i32, %struct.pm8xxx_rtc_regs* }
%struct.pm8xxx_rtc_regs = type { i32 }

@NUM_8_BIT_RTC_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RTC alarm time read failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid alarm time read from RTC\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Alarm set for - h:m:s=%ptRt, y-m-d=%ptRdr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @pm8xxx_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pm8xxx_rtc*, align 8
  %11 = alloca %struct.pm8xxx_rtc_regs*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load i32, i32* @NUM_8_BIT_RTC_REGS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device* %17)
  store %struct.pm8xxx_rtc* %18, %struct.pm8xxx_rtc** %10, align 8
  %19 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %10, align 8
  %20 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %19, i32 0, i32 1
  %21 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %20, align 8
  store %struct.pm8xxx_rtc_regs* %21, %struct.pm8xxx_rtc_regs** %11, align 8
  %22 = load %struct.pm8xxx_rtc*, %struct.pm8xxx_rtc** %10, align 8
  %23 = getelementptr inbounds %struct.pm8xxx_rtc, %struct.pm8xxx_rtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.pm8xxx_rtc_regs*, %struct.pm8xxx_rtc_regs** %11, align 8
  %26 = getelementptr inbounds %struct.pm8xxx_rtc_regs, %struct.pm8xxx_rtc_regs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nuw i64 4, %14
  %29 = trunc i64 %28 to i32
  %30 = call i32 @regmap_bulk_read(i32 %24, i32 %27, i32* %16, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %74

37:                                               ; preds = %2
  %38 = getelementptr inbounds i32, i32* %16, i64 0
  %39 = load i32, i32* %38, align 16
  %40 = getelementptr inbounds i32, i32* %16, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %39, %42
  %44 = getelementptr inbounds i32, i32* %16, i64 2
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 16
  %47 = or i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %16, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = shl i64 %51, 24
  %53 = or i64 %48, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 0
  %57 = call i32 @rtc_time_to_tm(i64 %54, i32* %56)
  %58 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %58, i32 0, i32 0
  %60 = call i32 @rtc_valid_tm(i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %37
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %74

67:                                               ; preds = %37
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %69, i32 0, i32 0
  %71 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %71, i32 0, i32 0
  %73 = call i32 @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32* %70, i32* %72)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %67, %63, %33
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.pm8xxx_rtc* @dev_get_drvdata(%struct.device*) #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @rtc_time_to_tm(i64, i32*) #2

declare dso_local i32 @rtc_valid_tm(i32*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
