; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_spi.c_cw1200_spi_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbus_priv = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwbus_priv*)* @cw1200_spi_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw1200_spi_lock(%struct.hwbus_priv* %0) #0 {
  %2 = alloca %struct.hwbus_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.hwbus_priv* %0, %struct.hwbus_priv** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %9 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %8, i32 0, i32 1
  %10 = call i32 @add_wait_queue(i32* %9, i32* @wait)
  %11 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %12 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %11, i32 0, i32 2
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  br label %15

15:                                               ; preds = %1, %23
  %16 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %17 = call i32 @set_current_state(i32 %16)
  %18 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %19 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %33

23:                                               ; preds = %15
  %24 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %25 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %24, i32 0, i32 2
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = call i32 (...) @schedule()
  %29 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %30 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %29, i32 0, i32 2
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  br label %15

33:                                               ; preds = %22
  %34 = load i32, i32* @TASK_RUNNING, align 4
  %35 = call i32 @set_current_state(i32 %34)
  %36 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %37 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %39 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %38, i32 0, i32 2
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %43 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %42, i32 0, i32 1
  %44 = call i32 @remove_wait_queue(i32* %43, i32* @wait)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
