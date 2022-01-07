; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-cpcap.c_cpcap_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cpcap_rtc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @cpcap_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpcap_rtc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.cpcap_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.cpcap_rtc* %8, %struct.cpcap_rtc** %6, align 8
  %9 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %10 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %20 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @enable_irq(i32 %21)
  br label %28

23:                                               ; preds = %15
  %24 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %25 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @disable_irq(i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.cpcap_rtc*, %struct.cpcap_rtc** %6, align 8
  %35 = getelementptr inbounds %struct.cpcap_rtc, %struct.cpcap_rtc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.cpcap_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
