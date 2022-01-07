; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_mv64x60_wdt.c_mv64x60_wdt_toggle_wdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_mv64x60_wdt.c_mv64x60_wdt_toggle_wdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mv64x60_wdt_spinlock = common dso_local global i32 0, align 4
@mv64x60_wdt_regs = common dso_local global i64 0, align 8
@MV64x60_WDT_WDC_OFFSET = common dso_local global i64 0, align 8
@MV64x60_WDC_ENABLED_SHIFT = common dso_local global i32 0, align 4
@mv64x60_wdt_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mv64x60_wdt_toggle_wdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64x60_wdt_toggle_wdc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = call i32 @spin_lock(i32* @mv64x60_wdt_spinlock)
  %9 = load i64, i64* @mv64x60_wdt_regs, align 8
  %10 = load i64, i64* @MV64x60_WDT_WDC_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MV64x60_WDC_ENABLED_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = and i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = xor i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @mv64x60_wdt_count, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* @mv64x60_wdt_regs, align 8
  %28 = load i64, i64* @MV64x60_WDT_WDC_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %26, i64 %29)
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 2, %31
  %33 = load i32, i32* @mv64x60_wdt_count, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* @mv64x60_wdt_regs, align 8
  %37 = load i64, i64* @MV64x60_WDT_WDC_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %35, i64 %38)
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %21, %2
  %41 = call i32 @spin_unlock(i32* @mv64x60_wdt_spinlock)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
