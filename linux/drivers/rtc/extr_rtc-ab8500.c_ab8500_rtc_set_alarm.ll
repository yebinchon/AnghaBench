; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ab8500.c_ab8500_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }

@ab8500_rtc_alarm_regs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Alarm less than 1 minute not supported\0D\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AB8500_RTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ab8500_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtc_time, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %15 = load i32*, i32** @ab8500_rtc_alarm_regs, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 1
  %22 = call i32 @rtc_tm_to_time(%struct.rtc_time* %21, i64* %11)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @ab8500_rtc_read_time(%struct.device* %23, %struct.rtc_time* %13)
  %25 = call i32 @rtc_tm_to_time(%struct.rtc_time* %13, i64* %12)
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = sub i64 %26, %27
  %29 = icmp ult i64 %28, 59
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %84

35:                                               ; preds = %2
  %36 = load i64, i64* %11, align 8
  %37 = udiv i64 %36, 60
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = and i64 %38, 255
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %40, i8* %41, align 2
  %42 = load i64, i64* %10, align 8
  %43 = lshr i64 %42, 8
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i8
  %46 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %45, i8* %46, align 1
  %47 = load i64, i64* %10, align 8
  %48 = lshr i64 %47, 16
  %49 = and i64 %48, 255
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %50, i8* %51, align 16
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %75, %35
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** @ab8500_rtc_alarm_regs, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* @AB8500_RTC, align 4
  %60 = load i32*, i32** @ab8500_rtc_alarm_regs, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %19, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i32 @abx500_set_register_interruptible(%struct.device* %58, i32 %59, i32 %64, i8 zeroext %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %84

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %52

78:                                               ; preds = %52
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ab8500_rtc_irq_enable(%struct.device* %79, i32 %82)
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %84

84:                                               ; preds = %78, %72, %30
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @ab8500_rtc_read_time(%struct.device*, %struct.rtc_time*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @abx500_set_register_interruptible(%struct.device*, i32, i32, i8 zeroext) #1

declare dso_local i32 @ab8500_rtc_irq_enable(%struct.device*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
