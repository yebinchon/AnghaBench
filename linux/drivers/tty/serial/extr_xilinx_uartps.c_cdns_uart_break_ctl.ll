; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }

@CDNS_UART_CR = common dso_local global i64 0, align 8
@CDNS_UART_CR_STARTBRK = common dso_local global i32 0, align 4
@CDNS_UART_CR_STOPBRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @cdns_uart_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_uart_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CDNS_UART_CR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, i32* @CDNS_UART_CR_STARTBRK, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CDNS_UART_CR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  br label %45

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CDNS_UART_CR_STOPBRK, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* @CDNS_UART_CR_STOPBRK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CDNS_UART_CR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %34, %29
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
