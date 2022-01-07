; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_mrst_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mrst.c_mrst_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8, i8 }
%struct.mrst_rtc = type { i32 }

@EIO = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_AIE = common dso_local global i32 0, align 4
@RTC_HOURS_ALARM = common dso_local global i32 0, align 4
@RTC_MINUTES_ALARM = common dso_local global i32 0, align 4
@RTC_SECONDS_ALARM = common dso_local global i32 0, align 4
@IPCMSG_VRTC = common dso_local global i32 0, align 4
@IPC_CMD_VRTC_SETALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mrst_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrst_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.mrst_rtc*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.mrst_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.mrst_rtc* %12, %struct.mrst_rtc** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.mrst_rtc*, %struct.mrst_rtc** %6, align 8
  %14 = getelementptr inbounds %struct.mrst_rtc, %struct.mrst_rtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  store i8 %24, i8* %7, align 1
  %25 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %8, align 1
  %29 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %30 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i8, i8* %31, align 2
  store i8 %32, i8* %9, align 1
  %33 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %34 = load %struct.mrst_rtc*, %struct.mrst_rtc** %6, align 8
  %35 = load i32, i32* @RTC_AIE, align 4
  %36 = call i32 @mrst_irq_disable(%struct.mrst_rtc* %34, i32 %35)
  %37 = load i8, i8* %7, align 1
  %38 = load i32, i32* @RTC_HOURS_ALARM, align 4
  %39 = call i32 @vrtc_cmos_write(i8 zeroext %37, i32 %38)
  %40 = load i8, i8* %8, align 1
  %41 = load i32, i32* @RTC_MINUTES_ALARM, align 4
  %42 = call i32 @vrtc_cmos_write(i8 zeroext %40, i32 %41)
  %43 = load i8, i8* %9, align 1
  %44 = load i32, i32* @RTC_SECONDS_ALARM, align 4
  %45 = call i32 @vrtc_cmos_write(i8 zeroext %43, i32 %44)
  %46 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %47 = load i32, i32* @IPCMSG_VRTC, align 4
  %48 = load i32, i32* @IPC_CMD_VRTC_SETALARM, align 4
  %49 = call i32 @intel_scu_ipc_simple_command(i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %20
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %66

54:                                               ; preds = %20
  %55 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %56 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %57 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.mrst_rtc*, %struct.mrst_rtc** %6, align 8
  %62 = load i32, i32* @RTC_AIE, align 4
  %63 = call i32 @mrst_irq_enable(%struct.mrst_rtc* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %52, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.mrst_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mrst_irq_disable(%struct.mrst_rtc*, i32) #1

declare dso_local i32 @vrtc_cmos_write(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @intel_scu_ipc_simple_command(i32, i32) #1

declare dso_local i32 @mrst_irq_enable(%struct.mrst_rtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
