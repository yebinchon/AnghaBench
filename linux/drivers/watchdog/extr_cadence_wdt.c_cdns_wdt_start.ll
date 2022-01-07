; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cadence_wdt.c_cdns_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cadence_wdt.c_cdns_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i64 }
%struct.cdns_wdt = type { i64, i16, i32, i64, i32 }

@CDNS_WDT_COUNTER_VALUE_DIVISOR = common dso_local global i64 0, align 8
@CDNS_WDT_COUNTER_MAX = common dso_local global i16 0, align 2
@CDNS_WDT_ZMR_OFFSET = common dso_local global i32 0, align 4
@CDNS_WDT_ZMR_ZKEY_VAL = common dso_local global i32 0, align 4
@CDNS_WDT_CCR_CRV_MASK = common dso_local global i16 0, align 2
@CDNS_WDT_REGISTER_ACCESS_KEY = common dso_local global i16 0, align 2
@CDNS_WDT_CCR_OFFSET = common dso_local global i32 0, align 4
@CDNS_WDT_ZMR_WDEN_MASK = common dso_local global i32 0, align 4
@CDNS_WDT_ZMR_RSTLEN_16 = common dso_local global i32 0, align 4
@CDNS_WDT_ZMR_RSTEN_MASK = common dso_local global i32 0, align 4
@CDNS_WDT_ZMR_IRQEN_MASK = common dso_local global i32 0, align 4
@CDNS_WDT_RESTART_OFFSET = common dso_local global i32 0, align 4
@CDNS_WDT_RESTART_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @cdns_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.cdns_wdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = call %struct.cdns_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.cdns_wdt* %8, %struct.cdns_wdt** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %10 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %14 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %18 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = udiv i64 %16, %19
  %21 = mul i64 %15, %20
  %22 = load i64, i64* @CDNS_WDT_COUNTER_VALUE_DIVISOR, align 8
  %23 = udiv i64 %21, %22
  %24 = add i64 %23, 1
  %25 = trunc i64 %24 to i16
  store i16 %25, i16* %5, align 2
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @CDNS_WDT_COUNTER_MAX, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i16, i16* @CDNS_WDT_COUNTER_MAX, align 2
  store i16 %32, i16* %5, align 2
  br label %33

33:                                               ; preds = %31, %1
  %34 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %35 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %34, i32 0, i32 2
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %38 = load i32, i32* @CDNS_WDT_ZMR_OFFSET, align 4
  %39 = load i32, i32* @CDNS_WDT_ZMR_ZKEY_VAL, align 4
  %40 = call i32 @cdns_wdt_writereg(%struct.cdns_wdt* %37, i32 %38, i32 %39)
  %41 = load i16, i16* %5, align 2
  %42 = zext i16 %41 to i32
  %43 = shl i32 %42, 2
  %44 = load i16, i16* @CDNS_WDT_CCR_CRV_MASK, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %43, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %5, align 2
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @CDNS_WDT_REGISTER_ACCESS_KEY, align 2
  %51 = zext i16 %50 to i32
  %52 = or i32 %49, %51
  %53 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %54 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %53, i32 0, i32 1
  %55 = load i16, i16* %54, align 8
  %56 = zext i16 %55 to i32
  %57 = or i32 %52, %56
  store i32 %57, i32* %4, align 4
  %58 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %59 = load i32, i32* @CDNS_WDT_CCR_OFFSET, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @cdns_wdt_writereg(%struct.cdns_wdt* %58, i32 %59, i32 %60)
  %62 = load i32, i32* @CDNS_WDT_ZMR_WDEN_MASK, align 4
  %63 = load i32, i32* @CDNS_WDT_ZMR_RSTLEN_16, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @CDNS_WDT_ZMR_ZKEY_VAL, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %4, align 4
  %67 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %68 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %33
  %72 = load i32, i32* @CDNS_WDT_ZMR_RSTEN_MASK, align 4
  %73 = load i32, i32* %4, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @CDNS_WDT_ZMR_IRQEN_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %87

79:                                               ; preds = %33
  %80 = load i32, i32* @CDNS_WDT_ZMR_RSTEN_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @CDNS_WDT_ZMR_IRQEN_MASK, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %79, %71
  %88 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %89 = load i32, i32* @CDNS_WDT_ZMR_OFFSET, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @cdns_wdt_writereg(%struct.cdns_wdt* %88, i32 %89, i32 %90)
  %92 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %93 = load i32, i32* @CDNS_WDT_RESTART_OFFSET, align 4
  %94 = load i32, i32* @CDNS_WDT_RESTART_KEY, align 4
  %95 = call i32 @cdns_wdt_writereg(%struct.cdns_wdt* %92, i32 %93, i32 %94)
  %96 = load %struct.cdns_wdt*, %struct.cdns_wdt** %3, align 8
  %97 = getelementptr inbounds %struct.cdns_wdt, %struct.cdns_wdt* %96, i32 0, i32 2
  %98 = call i32 @spin_unlock(i32* %97)
  ret i32 0
}

declare dso_local %struct.cdns_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cdns_wdt_writereg(%struct.cdns_wdt*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
