; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@SCSCR = common dso_local global i32 0, align 4
@PORT_SCIFA = common dso_local global i64 0, align 8
@PORT_SCIFB = common dso_local global i64 0, align 8
@SCSCR_RDRQE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sci_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_start_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = load i32, i32* @SCSCR, align 4
  %6 = call zeroext i16 @serial_port_in(%struct.uart_port* %4, i32 %5)
  %7 = zext i16 %6 to i32
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call zeroext i16 @port_rx_irq_mask(%struct.uart_port* %8)
  %10 = zext i16 %9 to i32
  %11 = or i32 %7, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %3, align 2
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PORT_SCIFA, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PORT_SCIFB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18, %1
  %25 = load i16, i16* @SCSCR_RDRQE, align 2
  %26 = zext i16 %25 to i32
  %27 = xor i32 %26, -1
  %28 = load i16, i16* %3, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, %27
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %3, align 2
  br label %32

32:                                               ; preds = %24, %18
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = load i32, i32* @SCSCR, align 4
  %35 = load i16, i16* %3, align 2
  %36 = call i32 @serial_port_out(%struct.uart_port* %33, i32 %34, i16 zeroext %35)
  ret void
}

declare dso_local zeroext i16 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local zeroext i16 @port_rx_irq_mask(%struct.uart_port*) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
