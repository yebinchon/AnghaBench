; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32, i32)* }
%struct.ktermios = type { i64 }
%struct.uart_8250_port = type { i32 }

@UART_MCR = common dso_local global i32 0, align 4
@UART_CAP_IRDA = common dso_local global i32 0, align 4
@N_IRDA = common dso_local global i64 0, align 8
@DW_UART_MCR_SIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*)* @dw8250_set_ldisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw8250_set_ldisc(%struct.uart_port* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %7)
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %10, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = load i32, i32* @UART_MCR, align 4
  %14 = call i32 %11(%struct.uart_port* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UART_CAP_IRDA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @N_IRDA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @DW_UART_MCR_SIRE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load i32, i32* @DW_UART_MCR_SIRE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 1
  %39 = load i32 (%struct.uart_port*, i32, i32)*, i32 (%struct.uart_port*, i32, i32)** %38, align 8
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = load i32, i32* @UART_MCR, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 %39(%struct.uart_port* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %2
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %47 = call i32 @serial8250_do_set_ldisc(%struct.uart_port* %45, %struct.ktermios* %46)
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_do_set_ldisc(%struct.uart_port*, %struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
