; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pnx8xxx_uart.c_pnx8xxx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pnx8xxx_uart.c_pnx8xxx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx8xxx_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MCTRL_TIMEOUT = common dso_local global i64 0, align 8
@sport = common dso_local global %struct.pnx8xxx_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pnx8xxx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnx8xxx_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pnx8xxx_port*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %3, align 8
  %6 = ptrtoint %struct.pnx8xxx_port* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.pnx8xxx_port* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.pnx8xxx_port* %9, %struct.pnx8xxx_port** %3, align 8
  %10 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %3, align 8
  %11 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %3, align 8
  %17 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %3, align 8
  %22 = call i32 @pnx8xxx_mctrl_check(%struct.pnx8xxx_port* %21)
  %23 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %3, align 8
  %24 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %3, align 8
  %29 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %28, i32 0, i32 0
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* @MCTRL_TIMEOUT, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @mod_timer(i32* %29, i64 %32)
  br label %34

34:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.pnx8xxx_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pnx8xxx_mctrl_check(%struct.pnx8xxx_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
