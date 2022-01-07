; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 (%struct.uart_port*, %struct.ktermios*)* }
%struct.ktermios = type opaque
%struct.ktermios.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios.0*)* @serial8250_set_ldisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_set_ldisc(%struct.uart_port* %0, %struct.ktermios.0* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ktermios.0*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.ktermios.0* %1, %struct.ktermios.0** %4, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i32 (%struct.uart_port*, %struct.ktermios*)*, i32 (%struct.uart_port*, %struct.ktermios*)** %6, align 8
  %8 = icmp ne i32 (%struct.uart_port*, %struct.ktermios*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i32 (%struct.uart_port*, %struct.ktermios*)*, i32 (%struct.uart_port*, %struct.ktermios*)** %11, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = load %struct.ktermios.0*, %struct.ktermios.0** %4, align 8
  %15 = bitcast %struct.ktermios.0* %14 to %struct.ktermios*
  %16 = call i32 %12(%struct.uart_port* %13, %struct.ktermios* %15)
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = load %struct.ktermios.0*, %struct.ktermios.0** %4, align 8
  %20 = call i32 @serial8250_do_set_ldisc(%struct.uart_port* %18, %struct.ktermios.0* %19)
  br label %21

21:                                               ; preds = %17, %9
  ret void
}

declare dso_local i32 @serial8250_do_set_ldisc(%struct.uart_port*, %struct.ktermios.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
