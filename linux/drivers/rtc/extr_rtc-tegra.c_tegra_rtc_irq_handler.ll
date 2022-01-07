; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-tegra.c_tegra_rtc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_rtc_info = type { i32, i32, i64 }

@TEGRA_RTC_REG_INTR_STATUS = common dso_local global i64 0, align 8
@TEGRA_RTC_REG_INTR_MASK = common dso_local global i64 0, align 8
@TEGRA_RTC_INTR_STATUS_SEC_ALARM0 = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@TEGRA_RTC_INTR_STATUS_SEC_CDN_ALARM = common dso_local global i32 0, align 4
@RTC_PF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_rtc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rtc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tegra_rtc_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.device*
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device* %12)
  store %struct.tegra_rtc_info* %13, %struct.tegra_rtc_info** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TEGRA_RTC_REG_INTR_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @tegra_rtc_wait_while_busy(%struct.device* %23)
  %25 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %6, align 8
  %26 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %25, i32 0, i32 1
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %6, align 8
  %30 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TEGRA_RTC_REG_INTR_MASK, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %6, align 8
  %37 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TEGRA_RTC_REG_INTR_STATUS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %6, align 8
  %43 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %42, i32 0, i32 1
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %46

46:                                               ; preds = %22, %2
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @TEGRA_RTC_INTR_STATUS_SEC_ALARM0, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i64, i64* @RTC_IRQF, align 8
  %53 = load i64, i64* @RTC_AF, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @TEGRA_RTC_INTR_STATUS_SEC_CDN_ALARM, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i64, i64* @RTC_IRQF, align 8
  %64 = load i64, i64* @RTC_PF, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* %7, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.tegra_rtc_info*, %struct.tegra_rtc_info** %6, align 8
  %70 = getelementptr inbounds %struct.tegra_rtc_info, %struct.tegra_rtc_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @rtc_update_irq(i32 %71, i32 1, i64 %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %74
}

declare dso_local %struct.tegra_rtc_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @tegra_rtc_wait_while_busy(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
