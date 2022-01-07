; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_jz4740_wdt.c_jz4740_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_jz4740_wdt.c_jz4740_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.jz4740_wdt_drvdata = type { i64, i32 }

@JZ_WDT_CLOCK_DIV_1 = common dso_local global i16 0, align 2
@JZ_WDT_CLOCK_DIV_1024 = common dso_local global i16 0, align 2
@TCU_TCSR_PRESCALE_LSB = common dso_local global i32 0, align 4
@TCU_REG_WDT_TCER = common dso_local global i64 0, align 8
@TCU_REG_WDT_TCSR = common dso_local global i64 0, align 8
@TCU_REG_WDT_TDR = common dso_local global i64 0, align 8
@TCU_REG_WDT_TCNT = common dso_local global i64 0, align 8
@JZ_WDT_CLOCK_RTC = common dso_local global i16 0, align 2
@TCU_WDT_TCER_TCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @jz4740_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jz4740_wdt_drvdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %11 = call %struct.jz4740_wdt_drvdata* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.jz4740_wdt_drvdata* %11, %struct.jz4740_wdt_drvdata** %5, align 8
  %12 = load i16, i16* @JZ_WDT_CLOCK_DIV_1, align 2
  store i16 %12, i16* %8, align 2
  %13 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %14 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_get_rate(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul i32 %17, %18
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %30, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp ugt i32 %21, 65535
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i16, i16* %8, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @JZ_WDT_CLOCK_DIV_1024, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 65535, i32* %7, align 4
  br label %39

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = lshr i32 %31, 2
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @TCU_TCSR_PRESCALE_LSB, align 4
  %34 = shl i32 1, %33
  %35 = load i16, i16* %8, align 2
  %36 = zext i16 %35 to i32
  %37 = add nsw i32 %36, %34
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %8, align 2
  br label %20

39:                                               ; preds = %29, %20
  %40 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %41 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TCU_REG_WDT_TCER, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readb(i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %47 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TCU_REG_WDT_TCER, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i32 0, i64 %50)
  %52 = load i16, i16* %8, align 2
  %53 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %54 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TCU_REG_WDT_TCSR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writew(i16 zeroext %52, i64 %57)
  %59 = load i32, i32* %7, align 4
  %60 = trunc i32 %59 to i16
  %61 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %62 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TCU_REG_WDT_TDR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writew(i16 zeroext %60, i64 %65)
  %67 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %68 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TCU_REG_WDT_TCNT, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writew(i16 zeroext 0, i64 %71)
  %73 = load i16, i16* %8, align 2
  %74 = zext i16 %73 to i32
  %75 = load i16, i16* @JZ_WDT_CLOCK_RTC, align 2
  %76 = zext i16 %75 to i32
  %77 = or i32 %74, %76
  %78 = trunc i32 %77 to i16
  %79 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %80 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TCU_REG_WDT_TCSR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writew(i16 zeroext %78, i64 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @TCU_WDT_TCER_TCEN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %39
  %90 = load i32, i32* @TCU_WDT_TCER_TCEN, align 4
  %91 = load %struct.jz4740_wdt_drvdata*, %struct.jz4740_wdt_drvdata** %5, align 8
  %92 = getelementptr inbounds %struct.jz4740_wdt_drvdata, %struct.jz4740_wdt_drvdata* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TCU_REG_WDT_TCER, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writeb(i32 %90, i64 %95)
  br label %97

97:                                               ; preds = %89, %39
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %100 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  ret i32 0
}

declare dso_local %struct.jz4740_wdt_drvdata* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writew(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
