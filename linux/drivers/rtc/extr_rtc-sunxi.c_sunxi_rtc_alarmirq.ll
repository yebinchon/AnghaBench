; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_alarmirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sunxi.c_sunxi_rtc_alarmirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rtc_dev = type { i32, i64 }

@SUNXI_ALRM_IRQ_STA = common dso_local global i64 0, align 8
@SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sunxi_rtc_alarmirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rtc_alarmirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sunxi_rtc_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sunxi_rtc_dev*
  store %struct.sunxi_rtc_dev* %9, %struct.sunxi_rtc_dev** %6, align 8
  %10 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %11 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SUNXI_ALRM_IRQ_STA, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load i32, i32* @SUNXI_ALRM_IRQ_STA_CNT_IRQ_PEND, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %26 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SUNXI_ALRM_IRQ_STA, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.sunxi_rtc_dev*, %struct.sunxi_rtc_dev** %6, align 8
  %32 = getelementptr inbounds %struct.sunxi_rtc_dev, %struct.sunxi_rtc_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RTC_AF, align 4
  %35 = load i32, i32* @RTC_IRQF, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @rtc_update_irq(i32 %33, i32 1, i32 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %20
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
