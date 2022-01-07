; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { %struct.TYPE_2__, i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@ATMEL_US_IDR = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %4)
  store %struct.atmel_uart_port* %5, %struct.atmel_uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call i32 @atmel_disable_ms(%struct.uart_port* %6)
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = load i32, i32* @ATMEL_US_IDR, align 4
  %10 = call i32 @atmel_uart_writel(%struct.uart_port* %8, i32 %9, i32 -1)
  %11 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %11, i32 0, i32 6
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %14, i32 0, i32 5
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @synchronize_irq(i32 %19)
  %21 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %21, i32 0, i32 4
  %23 = call i32 @tasklet_kill(i32* %22)
  %24 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %24, i32 0, i32 3
  %26 = call i32 @tasklet_kill(i32* %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = call i32 @atmel_stop_rx(%struct.uart_port* %27)
  %29 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %30 = call i32 @atmel_stop_tx(%struct.uart_port* %29)
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = load i32, i32* @ATMEL_US_CR, align 4
  %33 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %34 = call i32 @atmel_uart_writel(%struct.uart_port* %31, i32 %32, i32 %33)
  %35 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %35, i32 0, i32 2
  %37 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %36, align 8
  %38 = icmp ne i32 (%struct.uart_port*)* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %40, i32 0, i32 2
  %42 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %41, align 8
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = call i32 %42(%struct.uart_port* %43)
  br label %45

45:                                               ; preds = %39, %1
  %46 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %47 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %46, i32 0, i32 1
  %48 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %47, align 8
  %49 = icmp ne i32 (%struct.uart_port*)* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %51, i32 0, i32 1
  %53 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %52, align 8
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = call i32 %53(%struct.uart_port* %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %61 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = call i32 @free_irq(i32 %65, %struct.uart_port* %66)
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = call i32 @atmel_flush_buffer(%struct.uart_port* %68)
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_disable_ms(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @atmel_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @atmel_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

declare dso_local i32 @atmel_flush_buffer(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
