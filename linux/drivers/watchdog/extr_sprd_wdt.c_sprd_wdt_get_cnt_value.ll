; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_get_cnt_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sprd_wdt.c_sprd_wdt_get_cnt_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_wdt = type { i64 }

@SPRD_WDT_CNT_HIGH = common dso_local global i64 0, align 8
@SPRD_WDT_CNT_HIGH_SHIFT = common dso_local global i32 0, align 4
@SPRD_WDT_CNT_LOW = common dso_local global i64 0, align 8
@SPRD_WDT_LOW_VALUE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_wdt*)* @sprd_wdt_get_cnt_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_wdt_get_cnt_value(%struct.sprd_wdt* %0) #0 {
  %2 = alloca %struct.sprd_wdt*, align 8
  %3 = alloca i32, align 4
  store %struct.sprd_wdt* %0, %struct.sprd_wdt** %2, align 8
  %4 = load %struct.sprd_wdt*, %struct.sprd_wdt** %2, align 8
  %5 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SPRD_WDT_CNT_HIGH, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  %10 = load i32, i32* @SPRD_WDT_CNT_HIGH_SHIFT, align 4
  %11 = shl i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.sprd_wdt*, %struct.sprd_wdt** %2, align 8
  %13 = getelementptr inbounds %struct.sprd_wdt, %struct.sprd_wdt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPRD_WDT_CNT_LOW, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  %18 = load i32, i32* @SPRD_WDT_LOW_VALUE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
