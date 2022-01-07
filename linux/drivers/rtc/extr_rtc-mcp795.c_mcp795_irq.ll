; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.rtc_device = type { %struct.mutex }
%struct.mutex = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to disable alarm in IRQ (ret=%d)\0A\00", align 1
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcp795_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.spi_device*
  store %struct.spi_device* %10, %struct.spi_device** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %12 = call %struct.rtc_device* @spi_get_drvdata(%struct.spi_device* %11)
  store %struct.rtc_device* %12, %struct.rtc_device** %6, align 8
  %13 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %14 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %13, i32 0, i32 0
  store %struct.mutex* %14, %struct.mutex** %7, align 8
  %15 = load %struct.mutex*, %struct.mutex** %7, align 8
  %16 = call i32 @mutex_lock(%struct.mutex* %15)
  %17 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = call i32 @mcp795_update_alarm(i32* %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %29 = load i32, i32* @RTC_AF, align 4
  %30 = load i32, i32* @RTC_IRQF, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @rtc_update_irq(%struct.rtc_device* %28, i32 1, i32 %31)
  %33 = load %struct.mutex*, %struct.mutex** %7, align 8
  %34 = call i32 @mutex_unlock(%struct.mutex* %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %35
}

declare dso_local %struct.rtc_device* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @mcp795_update_alarm(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
