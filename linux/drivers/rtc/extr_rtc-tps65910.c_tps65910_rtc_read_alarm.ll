; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.tps65910 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@TPS65910_ALARM_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rtc_read_alarm error %d\0A\00", align 1
@TPS65910_RTC_INTERRUPTS = common dso_local global i32 0, align 4
@TPS65910_RTC_INTERRUPTS_IT_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @tps65910_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tps65910*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %12 = load i32, i32* @NUM_TIME_REGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tps65910* @dev_get_drvdata(i32 %18)
  store %struct.tps65910* %19, %struct.tps65910** %9, align 8
  %20 = load %struct.tps65910*, %struct.tps65910** %9, align 8
  %21 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TPS65910_ALARM_SECONDS, align 4
  %24 = load i32, i32* @NUM_TIME_REGS, align 4
  %25 = call i32 @regmap_bulk_read(i32 %22, i32 %23, i8* %15, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %91

33:                                               ; preds = %2
  %34 = getelementptr inbounds i8, i8* %15, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = call i8* @bcd2bin(i8 zeroext %35)
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  store i8* %36, i8** %39, align 8
  %40 = getelementptr inbounds i8, i8* %15, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = call i8* @bcd2bin(i8 zeroext %41)
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = getelementptr inbounds i8, i8* %15, i64 2
  %47 = load i8, i8* %46, align 2
  %48 = call i8* @bcd2bin(i8 zeroext %47)
  %49 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i8* %48, i8** %51, align 8
  %52 = getelementptr inbounds i8, i8* %15, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = call i8* @bcd2bin(i8 zeroext %53)
  %55 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %56 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = getelementptr inbounds i8, i8* %15, i64 4
  %59 = load i8, i8* %58, align 4
  %60 = call i8* @bcd2bin(i8 zeroext %59)
  %61 = getelementptr i8, i8* %60, i64 -1
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = getelementptr inbounds i8, i8* %15, i64 5
  %66 = load i8, i8* %65, align 1
  %67 = call i8* @bcd2bin(i8 zeroext %66)
  %68 = getelementptr i8, i8* %67, i64 100
  %69 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load %struct.tps65910*, %struct.tps65910** %9, align 8
  %73 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TPS65910_RTC_INTERRUPTS, align 4
  %76 = call i32 @regmap_read(i32 %74, i32 %75, i32* %8)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %33
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %91

81:                                               ; preds = %33
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @TPS65910_RTC_INTERRUPTS_IT_ALARM, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %91

91:                                               ; preds = %89, %79, %28
  %92 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i8*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i8* @bcd2bin(i8 zeroext) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
