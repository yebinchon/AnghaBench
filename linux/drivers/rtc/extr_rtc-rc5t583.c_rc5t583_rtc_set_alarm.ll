; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-rc5t583.c_rc5t583_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.rc5t583 = type { i32 }

@NUM_YAL_REGS = common dso_local global i32 0, align 4
@RC5T583_RTC_AY_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rtc_set_alarm error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @rc5t583_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rc5t583*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rc5t583* @dev_get_drvdata(i32 %13)
  store %struct.rc5t583* %14, %struct.rc5t583** %6, align 8
  %15 = load i32, i32* @NUM_YAL_REGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @rc5t583_rtc_alarm_irq_enable(%struct.device* %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

25:                                               ; preds = %2
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = call zeroext i8 @bin2bcd(i64 %29)
  %31 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %30, i8* %31, align 16
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call zeroext i8 @bin2bcd(i64 %35)
  %37 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %36, i8* %37, align 1
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call zeroext i8 @bin2bcd(i64 %41)
  %43 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 %42, i8* %43, align 2
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call zeroext i8 @bin2bcd(i64 %48)
  %50 = getelementptr inbounds i8, i8* %18, i64 3
  store i8 %49, i8* %50, align 1
  %51 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 100
  %56 = call zeroext i8 @bin2bcd(i64 %55)
  %57 = getelementptr inbounds i8, i8* %18, i64 4
  store i8 %56, i8* %57, align 4
  %58 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %59 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RC5T583_RTC_AY_MIN, align 4
  %62 = load i32, i32* @NUM_YAL_REGS, align 4
  %63 = call i32 @regmap_bulk_write(i32 %60, i32 %61, i8* %18, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %25
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

71:                                               ; preds = %25
  %72 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %73 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @rc5t583_rtc_alarm_irq_enable(%struct.device* %77, i32 1)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %66, %23
  %82 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.rc5t583* @dev_get_drvdata(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rc5t583_rtc_alarm_irq_enable(%struct.device*, i32) #1

declare dso_local zeroext i8 @bin2bcd(i64) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #1

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
