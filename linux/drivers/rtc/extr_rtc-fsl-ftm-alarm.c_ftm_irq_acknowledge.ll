; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_irq_acknowledge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-fsl-ftm-alarm.c_ftm_irq_acknowledge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftm_rtc = type { i32 }

@FTM_SC_TOF = common dso_local global i32 0, align 4
@FTM_SC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftm_rtc*)* @ftm_irq_acknowledge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftm_irq_acknowledge(%struct.ftm_rtc* %0) #0 {
  %2 = alloca %struct.ftm_rtc*, align 8
  %3 = alloca i32, align 4
  store %struct.ftm_rtc* %0, %struct.ftm_rtc** %2, align 8
  store i32 100, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* @FTM_SC_TOF, align 4
  %6 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %7 = load i32, i32* @FTM_SC, align 4
  %8 = call i32 @rtc_readl(%struct.ftm_rtc* %6, i32 %7)
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp ne i32 %12, 0
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i1 [ false, %4 ], [ %14, %11 ]
  br i1 %16, label %17, label %27

17:                                               ; preds = %15
  %18 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %19 = load i32, i32* @FTM_SC, align 4
  %20 = load %struct.ftm_rtc*, %struct.ftm_rtc** %2, align 8
  %21 = load i32, i32* @FTM_SC, align 4
  %22 = call i32 @rtc_readl(%struct.ftm_rtc* %20, i32 %21)
  %23 = load i32, i32* @FTM_SC_TOF, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @rtc_writel(%struct.ftm_rtc* %18, i32 %19, i32 %25)
  br label %4

27:                                               ; preds = %15
  ret void
}

declare dso_local i32 @rtc_readl(%struct.ftm_rtc*, i32) #1

declare dso_local i32 @rtc_writel(%struct.ftm_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
