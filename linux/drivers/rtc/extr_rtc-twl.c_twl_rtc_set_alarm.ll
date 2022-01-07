; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-twl.c_twl_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }
%struct.twl_rtc = type { i32* }

@ALL_TIME_REGS = common dso_local global i32 0, align 4
@TWL_MODULE_RTC = common dso_local global i32 0, align 4
@REG_ALARM_SECONDS_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"rtc_set_alarm error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @twl_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.twl_rtc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.twl_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.twl_rtc* %10, %struct.twl_rtc** %5, align 8
  %11 = load i32, i32* @ALL_TIME_REGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @twl_rtc_alarm_irq_enable(%struct.device* %15, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = call zeroext i8 @bin2bcd(i64 %24)
  %26 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %25, i8* %26, align 16
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = call zeroext i8 @bin2bcd(i64 %30)
  %32 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %31, i8* %32, align 1
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call zeroext i8 @bin2bcd(i64 %36)
  %38 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %37, i8* %38, align 2
  %39 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call zeroext i8 @bin2bcd(i64 %42)
  %44 = getelementptr inbounds i8, i8* %14, i64 3
  store i8 %43, i8* %44, align 1
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = call zeroext i8 @bin2bcd(i64 %49)
  %51 = getelementptr inbounds i8, i8* %14, i64 4
  store i8 %50, i8* %51, align 4
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 100
  %57 = call zeroext i8 @bin2bcd(i64 %56)
  %58 = getelementptr inbounds i8, i8* %14, i64 5
  store i8 %57, i8* %58, align 1
  %59 = load i32, i32* @TWL_MODULE_RTC, align 4
  %60 = load %struct.twl_rtc*, %struct.twl_rtc** %5, align 8
  %61 = getelementptr inbounds %struct.twl_rtc, %struct.twl_rtc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @REG_ALARM_SECONDS_REG, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ALL_TIME_REGS, align 4
  %67 = call i32 @twl_i2c_write(i32 %59, i8* %14, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %20
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %83

74:                                               ; preds = %20
  %75 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %76 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = call i32 @twl_rtc_alarm_irq_enable(%struct.device* %80, i32 1)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %70, %19
  %84 = load i32, i32* %8, align 4
  %85 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %85)
  ret i32 %84
}

declare dso_local %struct.twl_rtc* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @twl_rtc_alarm_irq_enable(%struct.device*, i32) #1

declare dso_local zeroext i8 @bin2bcd(i64) #1

declare dso_local i32 @twl_i2c_write(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
