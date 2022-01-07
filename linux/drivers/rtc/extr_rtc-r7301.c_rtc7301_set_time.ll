; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.rtc7301_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @rtc7301_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc7301_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.rtc7301_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.rtc7301_priv* @dev_get_drvdata(%struct.device* %7)
  store %struct.rtc7301_priv* %8, %struct.rtc7301_priv** %5, align 8
  %9 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtc7301_priv, %struct.rtc7301_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %5, align 8
  %14 = call i32 @rtc7301_stop(%struct.rtc7301_priv* %13)
  %15 = call i32 @udelay(i32 300)
  %16 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %5, align 8
  %17 = call i32 @rtc7301_select_bank(%struct.rtc7301_priv* %16, i32 0)
  %18 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %5, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %20 = call i32 @rtc7301_write_time(%struct.rtc7301_priv* %18, %struct.rtc_time* %19, i32 0)
  %21 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %5, align 8
  %22 = call i32 @rtc7301_start(%struct.rtc7301_priv* %21)
  %23 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtc7301_priv, %struct.rtc7301_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret i32 0
}

declare dso_local %struct.rtc7301_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtc7301_stop(%struct.rtc7301_priv*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtc7301_select_bank(%struct.rtc7301_priv*, i32) #1

declare dso_local i32 @rtc7301_write_time(%struct.rtc7301_priv*, %struct.rtc_time*, i32) #1

declare dso_local i32 @rtc7301_start(%struct.rtc7301_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
