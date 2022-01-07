; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83977f_wdt.c_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83977f_wdt.c_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spinlock = common dso_local global i32 0, align 4
@UNLOCK_DATA = common dso_local global i32 0, align 4
@IO_INDEX_PORT = common dso_local global i32 0, align 4
@DEVICE_REGISTER = common dso_local global i32 0, align 4
@IO_DATA_PORT = common dso_local global i32 0, align 4
@testmode = common dso_local global i32 0, align 4
@LOCK_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"shutdown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_stop() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @spinlock, i64 %2)
  %4 = load i32, i32* @UNLOCK_DATA, align 4
  %5 = load i32, i32* @IO_INDEX_PORT, align 4
  %6 = call i32 @outb_p(i32 %4, i32 %5)
  %7 = load i32, i32* @UNLOCK_DATA, align 4
  %8 = load i32, i32* @IO_INDEX_PORT, align 4
  %9 = call i32 @outb_p(i32 %7, i32 %8)
  %10 = load i32, i32* @DEVICE_REGISTER, align 4
  %11 = load i32, i32* @IO_INDEX_PORT, align 4
  %12 = call i32 @outb_p(i32 %10, i32 %11)
  %13 = load i32, i32* @IO_DATA_PORT, align 4
  %14 = call i32 @outb_p(i32 8, i32 %13)
  %15 = load i32, i32* @IO_INDEX_PORT, align 4
  %16 = call i32 @outb_p(i32 242, i32 %15)
  %17 = load i32, i32* @IO_DATA_PORT, align 4
  %18 = call i32 @outb_p(i32 255, i32 %17)
  %19 = load i32, i32* @IO_INDEX_PORT, align 4
  %20 = call i32 @outb_p(i32 243, i32 %19)
  %21 = load i32, i32* @IO_DATA_PORT, align 4
  %22 = call i32 @outb_p(i32 0, i32 %21)
  %23 = load i32, i32* @IO_INDEX_PORT, align 4
  %24 = call i32 @outb_p(i32 244, i32 %23)
  %25 = load i32, i32* @IO_DATA_PORT, align 4
  %26 = call i32 @outb_p(i32 0, i32 %25)
  %27 = load i32, i32* @IO_INDEX_PORT, align 4
  %28 = call i32 @outb_p(i32 242, i32 %27)
  %29 = load i32, i32* @IO_DATA_PORT, align 4
  %30 = call i32 @outb_p(i32 0, i32 %29)
  %31 = load i32, i32* @DEVICE_REGISTER, align 4
  %32 = load i32, i32* @IO_INDEX_PORT, align 4
  %33 = call i32 @outb_p(i32 %31, i32 %32)
  %34 = load i32, i32* @IO_DATA_PORT, align 4
  %35 = call i32 @outb_p(i32 7, i32 %34)
  %36 = load i32, i32* @testmode, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %0
  %39 = load i32, i32* @IO_INDEX_PORT, align 4
  %40 = call i32 @outb_p(i32 230, i32 %39)
  %41 = load i32, i32* @IO_DATA_PORT, align 4
  %42 = call i32 @outb_p(i32 1, i32 %41)
  br label %43

43:                                               ; preds = %38, %0
  %44 = load i32, i32* @IO_INDEX_PORT, align 4
  %45 = call i32 @outb_p(i32 227, i32 %44)
  %46 = load i32, i32* @IO_DATA_PORT, align 4
  %47 = call i32 @outb_p(i32 1, i32 %46)
  %48 = load i32, i32* @LOCK_DATA, align 4
  %49 = load i32, i32* @IO_INDEX_PORT, align 4
  %50 = call i32 @outb_p(i32 %48, i32 %49)
  %51 = load i64, i64* %1, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* @spinlock, i64 %51)
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
