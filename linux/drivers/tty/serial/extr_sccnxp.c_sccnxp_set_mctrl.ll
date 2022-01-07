; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sccnxp.c_sccnxp_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sccnxp_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SCCNXP_HAVE_IO = common dso_local global i32 0, align 4
@DTR_OP = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@RTS_OP = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sccnxp_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnxp_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sccnxp_port*, align 8
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sccnxp_port* @dev_get_drvdata(i32 %9)
  store %struct.sccnxp_port* %10, %struct.sccnxp_port** %5, align 8
  %11 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %12 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SCCNXP_HAVE_IO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %22 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %21, i32 0, i32 0
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = load i32, i32* @DTR_OP, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TIOCM_DTR, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @sccnxp_set_bit(%struct.uart_port* %25, i32 %26, i32 %29)
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = load i32, i32* @RTS_OP, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TIOCM_RTS, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @sccnxp_set_bit(%struct.uart_port* %31, i32 %32, i32 %35)
  %37 = load %struct.sccnxp_port*, %struct.sccnxp_port** %5, align 8
  %38 = getelementptr inbounds %struct.sccnxp_port, %struct.sccnxp_port* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.sccnxp_port* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sccnxp_set_bit(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
