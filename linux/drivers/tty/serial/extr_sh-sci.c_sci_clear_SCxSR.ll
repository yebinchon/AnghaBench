; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_clear_SCxSR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_sci_clear_SCxSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PORT_SCI = common dso_local global i64 0, align 8
@SCxSR = common dso_local global i32 0, align 4
@SCIFA_ORER = common dso_local global i64 0, align 8
@SCIF_FERC = common dso_local global i32 0, align 4
@SCIF_PERC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sci_clear_SCxSR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_clear_SCxSR(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PORT_SCI, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = load i32, i32* @SCxSR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @serial_port_out(%struct.uart_port* %11, i32 %12, i32 %13)
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = call %struct.TYPE_4__* @to_sci_port(%struct.uart_port* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SCIFA_ORER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = load i32, i32* @SCxSR, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = load i32, i32* @SCxSR, align 4
  %29 = call i32 @serial_port_in(%struct.uart_port* %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @serial_port_out(%struct.uart_port* %25, i32 %26, i32 %31)
  br label %43

33:                                               ; preds = %15
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = load i32, i32* @SCxSR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SCIF_FERC, align 4
  %38 = load i32, i32* @SCIF_PERC, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %36, %40
  %42 = call i32 @serial_port_out(%struct.uart_port* %34, i32 %35, i32 %41)
  br label %43

43:                                               ; preds = %33, %24
  br label %44

44:                                               ; preds = %43, %10
  ret void
}

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_sci_port(%struct.uart_port*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
