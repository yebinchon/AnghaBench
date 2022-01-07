; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_ip22zilog_port = type { i32* }
%struct.zilog_channel = type { i32 }

@RxENAB = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@TxENAB = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@RxINT_MASK = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@SND_BRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @ip22zilog_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.uart_ip22zilog_port* @UART_ZILOG(%struct.uart_port* %6)
  store %struct.uart_ip22zilog_port* %7, %struct.uart_ip22zilog_port** %3, align 8
  %8 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %9 = call i64 @ZS_IS_CONS(%struct.uart_ip22zilog_port* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %66

12:                                               ; preds = %1
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port* %17)
  store %struct.zilog_channel* %18, %struct.zilog_channel** %4, align 8
  %19 = load i32, i32* @RxENAB, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @R3, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %20
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @TxENAB, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @R5, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %29
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @EXT_INT_ENAB, align 4
  %38 = load i32, i32* @TxINT_ENAB, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RxINT_MASK, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @R1, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %42
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @SND_BRK, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @R5, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %51
  store i32 %58, i32* %56, align 4
  %59 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %60 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %61 = call i32 @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port* %59, %struct.zilog_channel* %60)
  %62 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.uart_ip22zilog_port* @UART_ZILOG(%struct.uart_port*) #1

declare dso_local i64 @ZS_IS_CONS(%struct.uart_ip22zilog_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port*) #1

declare dso_local i32 @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
