; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ac100.c_ac100_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac100_rtc_dev = type { %struct.TYPE_2__*, i32, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@AC100_ALM_INT_STA = common dso_local global i32 0, align 4
@AC100_ALM_INT_ENABLE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ac100_rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac100_rtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ac100_rtc_dev*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ac100_rtc_dev*
  store %struct.ac100_rtc_dev* %10, %struct.ac100_rtc_dev** %5, align 8
  %11 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %11, i32 0, i32 2
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %15 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.regmap*, %struct.regmap** %6, align 8
  %20 = load i32, i32* @AC100_ALM_INT_STA, align 4
  %21 = call i32 @regmap_read(%struct.regmap* %19, i32 %20, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %55

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @AC100_ALM_INT_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %32 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* @RTC_AF, align 4
  %35 = load i32, i32* @RTC_IRQF, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @rtc_update_irq(%struct.TYPE_2__* %33, i32 1, i32 %36)
  %38 = load %struct.regmap*, %struct.regmap** %6, align 8
  %39 = load i32, i32* @AC100_ALM_INT_STA, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @regmap_write(%struct.regmap* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %55

45:                                               ; preds = %30
  %46 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %47 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ac100_rtc_alarm_irq_enable(i32 %48, i32 0)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %55

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %54, %52, %44, %24
  %56 = load %struct.ac100_rtc_dev*, %struct.ac100_rtc_dev** %5, align 8
  %57 = getelementptr inbounds %struct.ac100_rtc_dev, %struct.ac100_rtc_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @ac100_rtc_alarm_irq_enable(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
