; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mt7622.c_mtk_rtc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_rtc = type { i32 }

@MTK_RTC_PWRCHK1 = common dso_local global i32 0, align 4
@RTC_PWRCHK1_MAGIC = common dso_local global i32 0, align 4
@MTK_RTC_PWRCHK2 = common dso_local global i32 0, align 4
@RTC_PWRCHK2_MAGIC = common dso_local global i32 0, align 4
@MTK_RTC_KEY = common dso_local global i32 0, align 4
@RTC_KEY_MAGIC = common dso_local global i32 0, align 4
@MTK_RTC_PROT1 = common dso_local global i32 0, align 4
@RTC_PROT1_MAGIC = common dso_local global i32 0, align 4
@MTK_RTC_PROT2 = common dso_local global i32 0, align 4
@RTC_PROT2_MAGIC = common dso_local global i32 0, align 4
@MTK_RTC_PROT3 = common dso_local global i32 0, align 4
@RTC_PROT3_MAGIC = common dso_local global i32 0, align 4
@MTK_RTC_PROT4 = common dso_local global i32 0, align 4
@RTC_PROT4_MAGIC = common dso_local global i32 0, align 4
@MTK_RTC_DEBNCE = common dso_local global i32 0, align 4
@RTC_DEBNCE_MASK = common dso_local global i32 0, align 4
@MTK_RTC_CTL = common dso_local global i32 0, align 4
@RTC_RC_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_rtc*)* @mtk_rtc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_rtc_hw_init(%struct.mtk_rtc* %0) #0 {
  %2 = alloca %struct.mtk_rtc*, align 8
  store %struct.mtk_rtc* %0, %struct.mtk_rtc** %2, align 8
  %3 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %4 = load i32, i32* @MTK_RTC_PWRCHK1, align 4
  %5 = load i32, i32* @RTC_PWRCHK1_MAGIC, align 4
  %6 = call i32 @mtk_w32(%struct.mtk_rtc* %3, i32 %4, i32 %5)
  %7 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %8 = load i32, i32* @MTK_RTC_PWRCHK2, align 4
  %9 = load i32, i32* @RTC_PWRCHK2_MAGIC, align 4
  %10 = call i32 @mtk_w32(%struct.mtk_rtc* %7, i32 %8, i32 %9)
  %11 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %12 = load i32, i32* @MTK_RTC_KEY, align 4
  %13 = load i32, i32* @RTC_KEY_MAGIC, align 4
  %14 = call i32 @mtk_w32(%struct.mtk_rtc* %11, i32 %12, i32 %13)
  %15 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %16 = load i32, i32* @MTK_RTC_PROT1, align 4
  %17 = load i32, i32* @RTC_PROT1_MAGIC, align 4
  %18 = call i32 @mtk_w32(%struct.mtk_rtc* %15, i32 %16, i32 %17)
  %19 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %20 = load i32, i32* @MTK_RTC_PROT2, align 4
  %21 = load i32, i32* @RTC_PROT2_MAGIC, align 4
  %22 = call i32 @mtk_w32(%struct.mtk_rtc* %19, i32 %20, i32 %21)
  %23 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %24 = load i32, i32* @MTK_RTC_PROT3, align 4
  %25 = load i32, i32* @RTC_PROT3_MAGIC, align 4
  %26 = call i32 @mtk_w32(%struct.mtk_rtc* %23, i32 %24, i32 %25)
  %27 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %28 = load i32, i32* @MTK_RTC_PROT4, align 4
  %29 = load i32, i32* @RTC_PROT4_MAGIC, align 4
  %30 = call i32 @mtk_w32(%struct.mtk_rtc* %27, i32 %28, i32 %29)
  %31 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %32 = load i32, i32* @MTK_RTC_DEBNCE, align 4
  %33 = load i32, i32* @RTC_DEBNCE_MASK, align 4
  %34 = call i32 @mtk_rmw(%struct.mtk_rtc* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.mtk_rtc*, %struct.mtk_rtc** %2, align 8
  %36 = load i32, i32* @MTK_RTC_CTL, align 4
  %37 = load i32, i32* @RTC_RC_STOP, align 4
  %38 = call i32 @mtk_clr(%struct.mtk_rtc* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @mtk_w32(%struct.mtk_rtc*, i32, i32) #1

declare dso_local i32 @mtk_rmw(%struct.mtk_rtc*, i32, i32, i32) #1

declare dso_local i32 @mtk_clr(%struct.mtk_rtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
