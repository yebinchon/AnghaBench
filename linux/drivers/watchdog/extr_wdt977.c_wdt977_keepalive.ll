; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt977.c_wdt977_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt977.c_wdt977_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spinlock = common dso_local global i32 0, align 4
@UNLOCK_DATA = common dso_local global i32 0, align 4
@IO_INDEX_PORT = common dso_local global i32 0, align 4
@DEVICE_REGISTER = common dso_local global i32 0, align 4
@IO_DATA_PORT = common dso_local global i32 0, align 4
@timeoutM = common dso_local global i32 0, align 4
@LOCK_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdt977_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt977_keepalive() #0 {
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
  %17 = load i32, i32* @timeoutM, align 4
  %18 = load i32, i32* @IO_DATA_PORT, align 4
  %19 = call i32 @outb_p(i32 %17, i32 %18)
  %20 = load i32, i32* @LOCK_DATA, align 4
  %21 = load i32, i32* @IO_INDEX_PORT, align 4
  %22 = call i32 @outb_p(i32 %20, i32 %21)
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @spinlock, i64 %23)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
