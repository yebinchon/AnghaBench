; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_asm9260_wdt.c_asm9260_wdt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm9260_wdt_priv = type { i64, i32, i64 }

@HW_WDMOD = common dso_local global i64 0, align 8
@BM_MOD_WDINT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Watchdog Timeout. Do nothing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Watchdog Timeout. Doing SW Reset.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @asm9260_wdt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_wdt_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.asm9260_wdt_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.asm9260_wdt_priv*
  store %struct.asm9260_wdt_priv* %9, %struct.asm9260_wdt_priv** %6, align 8
  %10 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %6, align 8
  %11 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HW_WDMOD, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BM_MOD_WDINT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %6, align 8
  %24 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DEBUG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %6, align 8
  %30 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_info(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %6, align 8
  %35 = getelementptr inbounds %struct.asm9260_wdt_priv, %struct.asm9260_wdt_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.asm9260_wdt_priv*, %struct.asm9260_wdt_priv** %6, align 8
  %39 = call i32 @asm9260_wdt_sys_reset(%struct.asm9260_wdt_priv* %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @asm9260_wdt_sys_reset(%struct.asm9260_wdt_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
