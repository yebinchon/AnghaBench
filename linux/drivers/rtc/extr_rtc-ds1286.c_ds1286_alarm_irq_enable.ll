; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1286.c_ds1286_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1286.c_ds1286_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ds1286_priv = type { i32 }

@RTC_CMD = common dso_local global i32 0, align 4
@RTC_TDM = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ds1286_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1286_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds1286_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ds1286_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.ds1286_priv* %9, %struct.ds1286_priv** %5, align 8
  %10 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %15 = load i32, i32* @RTC_CMD, align 4
  %16 = call zeroext i8 @ds1286_rtc_read(%struct.ds1286_priv* %14, i32 %15)
  store i8 %16, i8* %7, align 1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i8, i8* @RTC_TDM, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, -1
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  br label %34

27:                                               ; preds = %2
  %28 = load i8, i8* @RTC_TDM, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %36 = load i8, i8* %7, align 1
  %37 = load i32, i32* @RTC_CMD, align 4
  %38 = call i32 @ds1286_rtc_write(%struct.ds1286_priv* %35, i8 zeroext %36, i32 %37)
  %39 = load %struct.ds1286_priv*, %struct.ds1286_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret i32 0
}

declare dso_local %struct.ds1286_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @ds1286_rtc_read(%struct.ds1286_priv*, i32) #1

declare dso_local i32 @ds1286_rtc_write(%struct.ds1286_priv*, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
