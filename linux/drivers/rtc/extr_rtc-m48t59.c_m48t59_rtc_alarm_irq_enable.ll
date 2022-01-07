; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.m48t59_plat_data = type { i32 }
%struct.m48t59_private = type { i32 }

@M48T59_INTR_AFE = common dso_local global i32 0, align 4
@M48T59_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @m48t59_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m48t59_plat_data*, align 8
  %6 = alloca %struct.m48t59_private*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.m48t59_plat_data* @dev_get_platdata(%struct.device* %8)
  store %struct.m48t59_plat_data* %9, %struct.m48t59_plat_data** %5, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.m48t59_private* @dev_get_drvdata(%struct.device* %10)
  store %struct.m48t59_private* %11, %struct.m48t59_private** %6, align 8
  %12 = load %struct.m48t59_private*, %struct.m48t59_private** %6, align 8
  %13 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @M48T59_INTR_AFE, align 4
  %20 = load i32, i32* @M48T59_INTR, align 4
  %21 = call i32 @M48T59_WRITE(i32 %19, i32 %20)
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @M48T59_INTR, align 4
  %24 = call i32 @M48T59_WRITE(i32 0, i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.m48t59_private*, %struct.m48t59_private** %6, align 8
  %27 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret i32 0
}

declare dso_local %struct.m48t59_plat_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.m48t59_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @M48T59_WRITE(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
