; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }

@SPRD_IEN = common dso_local global i32 0, align 4
@SPRD_ICLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sprd_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %4 = call i32 @sprd_release_dma(%struct.uart_port* %3)
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = load i32, i32* @SPRD_IEN, align 4
  %7 = call i32 @serial_out(%struct.uart_port* %5, i32 %6, i32 0)
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = load i32, i32* @SPRD_ICLR, align 4
  %10 = call i32 @serial_out(%struct.uart_port* %8, i32 %9, i32 -1)
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = call i32 @devm_free_irq(i32 %13, i32 %16, %struct.uart_port* %17)
  ret void
}

declare dso_local i32 @sprd_release_dma(%struct.uart_port*) #1

declare dso_local i32 @serial_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
