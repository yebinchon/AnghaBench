; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_alarm_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r7301.c_rtc7301_alarm_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc7301_priv = type { i32 }

@RTC7301_ALARM_CONTROL = common dso_local global i32 0, align 4
@RTC7301_ALARM_CONTROL_AF = common dso_local global i32 0, align 4
@RTC7301_ALARM_CONTROL_AIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc7301_priv*, i32)* @rtc7301_alarm_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc7301_alarm_irq(%struct.rtc7301_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rtc7301_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.rtc7301_priv* %0, %struct.rtc7301_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtc7301_priv*, %struct.rtc7301_priv** %3, align 8
  %6 = load i32, i32* @RTC7301_ALARM_CONTROL, align 4
  %7 = load i32, i32* @RTC7301_ALARM_CONTROL_AF, align 4
  %8 = load i32, i32* @RTC7301_ALARM_CONTROL_AIE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @RTC7301_ALARM_CONTROL_AIE, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  %17 = call i32 @rtc7301_update_bits(%struct.rtc7301_priv* %5, i32 %6, i32 %9, i32 %16)
  ret void
}

declare dso_local i32 @rtc7301_update_bits(%struct.rtc7301_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
