; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_handle_legacy_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_handle_legacy_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32, i32, i32, i32 }

@RTC_IRQF = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_handle_legacy_irq(%struct.rtc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rtc_device* %0, %struct.rtc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %9 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %8, i32 0, i32 3
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %13 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 8
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* @RTC_IRQF, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %23 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %24, i32 0, i32 3
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %28, i32 0, i32 2
  %30 = call i32 @wake_up_interruptible(i32* %29)
  %31 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %31, i32 0, i32 1
  %33 = load i32, i32* @SIGIO, align 4
  %34 = load i32, i32* @POLL_IN, align 4
  %35 = call i32 @kill_fasync(i32* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
