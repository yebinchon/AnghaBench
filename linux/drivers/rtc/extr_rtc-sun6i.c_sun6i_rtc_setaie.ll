; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_setaie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sun6i.c_sun6i_rtc_setaie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_rtc_dev = type { i32, i64 }

@SUN6I_ALRM_EN_CNT_EN = common dso_local global i32 0, align 4
@SUN6I_ALRM_IRQ_EN_CNT_IRQ_EN = common dso_local global i32 0, align 4
@SUN6I_ALARM_CONFIG_WAKEUP = common dso_local global i32 0, align 4
@SUN6I_ALRM_IRQ_STA_CNT_IRQ_PEND = common dso_local global i32 0, align 4
@SUN6I_ALRM_IRQ_STA = common dso_local global i64 0, align 8
@SUN6I_ALRM_EN = common dso_local global i64 0, align 8
@SUN6I_ALRM_IRQ_EN = common dso_local global i64 0, align 8
@SUN6I_ALARM_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sun6i_rtc_dev*)* @sun6i_rtc_setaie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_rtc_setaie(i32 %0, %struct.sun6i_rtc_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun6i_rtc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sun6i_rtc_dev* %1, %struct.sun6i_rtc_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @SUN6I_ALRM_EN_CNT_EN, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @SUN6I_ALRM_IRQ_EN_CNT_IRQ_EN, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @SUN6I_ALARM_CONFIG_WAKEUP, align 4
  store i32 %14, i32* %7, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load i32, i32* @SUN6I_ALRM_IRQ_STA_CNT_IRQ_PEND, align 4
  %17 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %18 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SUN6I_ALRM_IRQ_STA, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  br label %23

23:                                               ; preds = %15, %11
  %24 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %25 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %30 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SUN6I_ALRM_EN, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SUN6I_ALRM_IRQ_EN, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SUN6I_ALARM_CONFIG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.sun6i_rtc_dev*, %struct.sun6i_rtc_dev** %4, align 8
  %50 = getelementptr inbounds %struct.sun6i_rtc_dev, %struct.sun6i_rtc_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
