; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_do_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32 }
%struct.uart_8250_port = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.uart_8250_port*)* }

@UART_IER = common dso_local global i32 0, align 4
@UPF_FOURPORT = common dso_local global i32 0, align 4
@TIOCM_OUT1 = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial8250_do_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %5)
  store %struct.uart_8250_port* %6, %struct.uart_8250_port** %3, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %8 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %7)
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @UART_IER, align 4
  %17 = call i32 @serial_port_out(%struct.uart_port* %15, i32 %16, i32 0)
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 2
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @synchronize_irq(i32 %24)
  %26 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %32 = call i32 @serial8250_release_dma(%struct.uart_8250_port* %31)
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 2
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @UPF_FOURPORT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 4064
  %49 = or i32 %48, 31
  %50 = call i32 @inb(i32 %49)
  %51 = load i32, i32* @TIOCM_OUT1, align 4
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %63

56:                                               ; preds = %33
  %57 = load i32, i32* @TIOCM_OUT2, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %56, %44
  %64 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @serial8250_set_mctrl(%struct.uart_port* %64, i32 %67)
  %69 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 2
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = load i32, i32* @UART_LCR, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = load i32, i32* @UART_LCR, align 4
  %77 = call i32 @serial_port_in(%struct.uart_port* %75, i32 %76)
  %78 = load i32, i32* @UART_LCR_SBC, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = call i32 @serial_port_out(%struct.uart_port* %73, i32 %74, i32 %80)
  %82 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %83 = call i32 @serial8250_clear_fifos(%struct.uart_8250_port* %82)
  %84 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %85 = load i32, i32* @UART_RX, align 4
  %86 = call i32 @serial_port_in(%struct.uart_port* %84, i32 %85)
  %87 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %88 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %87)
  %89 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %90 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (%struct.uart_8250_port*)*, i32 (%struct.uart_8250_port*)** %92, align 8
  %94 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %95 = call i32 %93(%struct.uart_8250_port* %94)
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @serial8250_release_dma(%struct.uart_8250_port*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @serial8250_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial8250_clear_fifos(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
