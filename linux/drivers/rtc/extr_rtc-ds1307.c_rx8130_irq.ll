; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_rx8130_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_rx8130_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1307 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@RX8130_REG_EXTENSION = common dso_local global i32 0, align 4
@RX8130_REG_FLAG_AF = common dso_local global i32 0, align 4
@RX8130_REG_CONTROL0_AIE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rx8130_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx8130_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ds1307*, align 8
  %6 = alloca %struct.mutex*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ds1307*
  store %struct.ds1307* %10, %struct.ds1307** %5, align 8
  %11 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %12 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.mutex* %14, %struct.mutex** %6, align 8
  %15 = load %struct.mutex*, %struct.mutex** %6, align 8
  %16 = call i32 @mutex_lock(%struct.mutex* %15)
  %17 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %18 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RX8130_REG_EXTENSION, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %22 = call i32 @regmap_bulk_read(i32 %19, i32 %20, i32* %21, i32 12)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %61

26:                                               ; preds = %2
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RX8130_REG_FLAG_AF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %61

33:                                               ; preds = %26
  %34 = load i32, i32* @RX8130_REG_FLAG_AF, align 4
  %35 = xor i32 %34, -1
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @RX8130_REG_CONTROL0_AIE, align 4
  %40 = xor i32 %39, -1
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %45 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RX8130_REG_EXTENSION, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %49 = call i32 @regmap_bulk_write(i32 %46, i32 %47, i32* %48, i32 12)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %61

53:                                               ; preds = %33
  %54 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %55 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* @RTC_AF, align 4
  %58 = load i32, i32* @RTC_IRQF, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @rtc_update_irq(%struct.TYPE_2__* %56, i32 1, i32 %59)
  br label %61

61:                                               ; preds = %53, %52, %32, %25
  %62 = load %struct.mutex*, %struct.mutex** %6, align 8
  %63 = call i32 @mutex_unlock(%struct.mutex* %62)
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
