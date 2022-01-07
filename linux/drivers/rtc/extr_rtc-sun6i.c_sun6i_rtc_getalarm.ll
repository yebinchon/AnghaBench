; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_getalarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_getalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.sun6i_rtc_dev = type { i32, i32, i64 }

@SUN6I_ALRM_IRQ_EN = common dso_local global i64 0, align 8
@SUN6I_ALRM_IRQ_STA = common dso_local global i64 0, align 8
@SUN6I_ALRM_EN_CNT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @sun6i_rtc_getalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_rtc_getalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.sun6i_rtc_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.sun6i_rtc_dev* @dev_get_drvdata(%struct.device* %9)
  store %struct.sun6i_rtc_dev* %10, %struct.sun6i_rtc_dev** %5, align 8
  %11 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %5, align 8
  %12 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %5, align 8
  %16 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SUN6I_ALRM_IRQ_EN, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %5, align 8
  %22 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SUN6I_ALRM_IRQ_STA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %5, align 8
  %28 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SUN6I_ALRM_EN_CNT_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SUN6I_ALRM_EN_CNT_EN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %48 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %5, align 8
  %50 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %53 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %52, i32 0, i32 2
  %54 = call i32 @rtc_time_to_tm(i32 %51, i32* %53)
  ret i32 0
}

declare dso_local %struct.sun6i_rtc_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtc_time_to_tm(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
