; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tps65910.c_tps65910_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }
%struct.tps65910 = type { i32 }

@NUM_TIME_REGS = common dso_local global i32 0, align 4
@TPS65910_ALARM_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"rtc_set_alarm error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @tps65910_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tps65910*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load i32, i32* @NUM_TIME_REGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tps65910* @dev_get_drvdata(i32 %17)
  store %struct.tps65910* %18, %struct.tps65910** %8, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @tps65910_rtc_alarm_irq_enable(%struct.device* %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

25:                                               ; preds = %2
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call zeroext i8 @bin2bcd(i64 %29)
  %31 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 %30, i8* %31, align 16
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call zeroext i8 @bin2bcd(i64 %35)
  %37 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %36, i8* %37, align 1
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call zeroext i8 @bin2bcd(i64 %41)
  %43 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %42, i8* %43, align 2
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call zeroext i8 @bin2bcd(i64 %47)
  %49 = getelementptr inbounds i8, i8* %14, i64 3
  store i8 %48, i8* %49, align 1
  %50 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = call zeroext i8 @bin2bcd(i64 %54)
  %56 = getelementptr inbounds i8, i8* %14, i64 4
  store i8 %55, i8* %56, align 4
  %57 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %58 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 100
  %62 = call zeroext i8 @bin2bcd(i64 %61)
  %63 = getelementptr inbounds i8, i8* %14, i64 5
  store i8 %62, i8* %63, align 1
  %64 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %65 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TPS65910_ALARM_SECONDS, align 4
  %68 = load i32, i32* @NUM_TIME_REGS, align 4
  %69 = call i32 @regmap_bulk_write(i32 %66, i32 %67, i8* %14, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %25
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

77:                                               ; preds = %25
  %78 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @tps65910_rtc_alarm_irq_enable(%struct.device* %83, i32 1)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %72, %23
  %88 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tps65910* @dev_get_drvdata(i32) #2

declare dso_local i32 @tps65910_rtc_alarm_irq_enable(%struct.device*, i32) #2

declare dso_local zeroext i8 @bin2bcd(i64) #2

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
