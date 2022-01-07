; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83977f_wdt.c_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83977f_wdt.c_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spinlock = common dso_local global i32 0, align 4
@UNLOCK_DATA = common dso_local global i32 0, align 4
@IO_INDEX_PORT = common dso_local global i32 0, align 4
@DEVICE_REGISTER = common dso_local global i32 0, align 4
@IO_DATA_PORT = common dso_local global i32 0, align 4
@timeoutW = common dso_local global i32 0, align 4
@testmode = common dso_local global i32 0, align 4
@LOCK_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"activated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_start() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* %1, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @spinlock, i64 %3)
  %5 = load i32, i32* @UNLOCK_DATA, align 4
  %6 = load i32, i32* @IO_INDEX_PORT, align 4
  %7 = call i32 @outb_p(i32 %5, i32 %6)
  %8 = load i32, i32* @UNLOCK_DATA, align 4
  %9 = load i32, i32* @IO_INDEX_PORT, align 4
  %10 = call i32 @outb_p(i32 %8, i32 %9)
  %11 = load i32, i32* @DEVICE_REGISTER, align 4
  %12 = load i32, i32* @IO_INDEX_PORT, align 4
  %13 = call i32 @outb_p(i32 %11, i32 %12)
  %14 = load i32, i32* @IO_DATA_PORT, align 4
  %15 = call i32 @outb_p(i32 8, i32 %14)
  %16 = load i32, i32* @IO_INDEX_PORT, align 4
  %17 = call i32 @outb_p(i32 242, i32 %16)
  %18 = load i32, i32* @timeoutW, align 4
  %19 = load i32, i32* @IO_DATA_PORT, align 4
  %20 = call i32 @outb_p(i32 %18, i32 %19)
  %21 = load i32, i32* @IO_INDEX_PORT, align 4
  %22 = call i32 @outb_p(i32 243, i32 %21)
  %23 = load i32, i32* @IO_DATA_PORT, align 4
  %24 = call i32 @outb_p(i32 8, i32 %23)
  %25 = load i32, i32* @IO_INDEX_PORT, align 4
  %26 = call i32 @outb_p(i32 244, i32 %25)
  %27 = load i32, i32* @IO_DATA_PORT, align 4
  %28 = call i32 @outb_p(i32 0, i32 %27)
  %29 = load i32, i32* @IO_INDEX_PORT, align 4
  %30 = call i32 @outb_p(i32 48, i32 %29)
  %31 = load i32, i32* @IO_DATA_PORT, align 4
  %32 = call i32 @outb_p(i32 1, i32 %31)
  %33 = load i32, i32* @DEVICE_REGISTER, align 4
  %34 = load i32, i32* @IO_INDEX_PORT, align 4
  %35 = call i32 @outb_p(i32 %33, i32 %34)
  %36 = load i32, i32* @IO_DATA_PORT, align 4
  %37 = call i32 @outb_p(i32 7, i32 %36)
  %38 = load i32, i32* @testmode, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %0
  %41 = load i32, i32* @IO_INDEX_PORT, align 4
  %42 = call i32 @outb_p(i32 230, i32 %41)
  %43 = load i32, i32* @IO_DATA_PORT, align 4
  %44 = call i32 @outb_p(i32 10, i32 %43)
  %45 = load i32, i32* @IO_INDEX_PORT, align 4
  %46 = call i32 @outb_p(i32 44, i32 %45)
  %47 = load i32, i32* @IO_DATA_PORT, align 4
  %48 = call i32 @inb_p(i32 %47)
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = or i32 %49, 16
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = and i32 %51, -33
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* @IO_INDEX_PORT, align 4
  %54 = call i32 @outb_p(i32 44, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @IO_DATA_PORT, align 4
  %57 = call i32 @outb_p(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %40, %0
  %59 = load i32, i32* @IO_INDEX_PORT, align 4
  %60 = call i32 @outb_p(i32 227, i32 %59)
  %61 = load i32, i32* @IO_DATA_PORT, align 4
  %62 = call i32 @outb_p(i32 8, i32 %61)
  %63 = load i32, i32* @IO_INDEX_PORT, align 4
  %64 = call i32 @outb_p(i32 48, i32 %63)
  %65 = load i32, i32* @IO_DATA_PORT, align 4
  %66 = call i32 @outb_p(i32 1, i32 %65)
  %67 = load i32, i32* @LOCK_DATA, align 4
  %68 = load i32, i32* @IO_INDEX_PORT, align 4
  %69 = call i32 @outb_p(i32 %67, i32 %68)
  %70 = load i64, i64* %1, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @spinlock, i64 %70)
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
