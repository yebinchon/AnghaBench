; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-puv3.c_puv3_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-puv3.c_puv3_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"set alarm: %d, %ptRr\0A\00", align 1
@RTC_RTAR = common dso_local global i32 0, align 4
@puv3_rtc_alarmno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @puv3_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puv3_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %7 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %8 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %7, i32 0, i32 1
  store %struct.rtc_time* %8, %struct.rtc_time** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %11 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %14 = call i32 @dev_dbg(%struct.device* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %12, %struct.rtc_time* %13)
  %15 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %16 = call i32 @rtc_tm_to_time(%struct.rtc_time* %15, i64* %6)
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @RTC_RTAR, align 4
  %19 = call i32 @writel(i64 %17, i32 %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @puv3_rtc_setaie(%struct.device* %20, i64 %23)
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @puv3_rtc_alarmno, align 4
  %31 = call i32 @enable_irq_wake(i32 %30)
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @puv3_rtc_alarmno, align 4
  %34 = call i32 @disable_irq_wake(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  ret i32 0
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, %struct.rtc_time*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @puv3_rtc_setaie(%struct.device*, i64) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
