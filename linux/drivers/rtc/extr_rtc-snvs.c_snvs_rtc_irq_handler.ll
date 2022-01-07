; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-snvs.c_snvs_rtc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snvs_rtc_data = type { i64, i64, i32, i32 }

@SNVS_LPSR = common dso_local global i64 0, align 8
@SNVS_LPSR_LPTA = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snvs_rtc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_rtc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snvs_rtc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.device*
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device* %11)
  store %struct.snvs_rtc_data* %12, %struct.snvs_rtc_data** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %14 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %19 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @clk_enable(i64 %20)
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %24 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %27 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNVS_LPSR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @regmap_read(i32 %25, i64 %30, i32* %7)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SNVS_LPSR_LPTA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %22
  %37 = load i32, i32* @RTC_AF, align 4
  %38 = load i32, i32* @RTC_IRQF, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i32 @snvs_rtc_alarm_irq_enable(%struct.device* %42, i32 0)
  %44 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %45 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @rtc_update_irq(i32 %46, i32 1, i32 %47)
  br label %49

49:                                               ; preds = %36, %22
  %50 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %51 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %54 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SNVS_LPSR, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @regmap_write(i32 %52, i64 %57, i32 %58)
  %60 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %61 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.snvs_rtc_data*, %struct.snvs_rtc_data** %6, align 8
  %66 = getelementptr inbounds %struct.snvs_rtc_data, %struct.snvs_rtc_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @clk_disable(i64 %67)
  br label %69

69:                                               ; preds = %64, %49
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @IRQ_NONE, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  ret i32 %77
}

declare dso_local %struct.snvs_rtc_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_enable(i64) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @snvs_rtc_alarm_irq_enable(%struct.device*, i32) #1

declare dso_local i32 @rtc_update_irq(i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @clk_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
