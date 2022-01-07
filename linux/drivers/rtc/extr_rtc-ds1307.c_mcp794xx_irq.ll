; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_mcp794xx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1307.c_mcp794xx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1307 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@MCP794XX_REG_ALARM0_CTRL = common dso_local global i32 0, align 4
@MCP794XX_BIT_ALMX_IF = common dso_local global i32 0, align 4
@MCP794XX_REG_CONTROL = common dso_local global i32 0, align 4
@MCP794XX_BIT_ALM0_EN = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mcp794xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp794xx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ds1307*, align 8
  %6 = alloca %struct.mutex*, align 8
  %7 = alloca i32, align 4
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
  %20 = load i32, i32* @MCP794XX_REG_ALARM0_CTRL, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %63

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MCP794XX_BIT_ALMX_IF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %63

31:                                               ; preds = %25
  %32 = load i32, i32* @MCP794XX_BIT_ALMX_IF, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %37 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MCP794XX_REG_ALARM0_CTRL, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @regmap_write(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %63

45:                                               ; preds = %31
  %46 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %47 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MCP794XX_REG_CONTROL, align 4
  %50 = load i32, i32* @MCP794XX_BIT_ALM0_EN, align 4
  %51 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %63

55:                                               ; preds = %45
  %56 = load %struct.ds1307*, %struct.ds1307** %5, align 8
  %57 = getelementptr inbounds %struct.ds1307, %struct.ds1307* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* @RTC_AF, align 4
  %60 = load i32, i32* @RTC_IRQF, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @rtc_update_irq(%struct.TYPE_2__* %58, i32 1, i32 %61)
  br label %63

63:                                               ; preds = %55, %54, %44, %30, %24
  %64 = load %struct.mutex*, %struct.mutex** %6, align 8
  %65 = call i32 @mutex_unlock(%struct.mutex* %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %66
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @rtc_update_irq(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
