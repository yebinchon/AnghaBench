; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_pio_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_pio_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sirfsoc_uart_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sirfsoc_fifo_status, %struct.sirfsoc_register }
%struct.sirfsoc_fifo_status = type { i32 (%struct.uart_port*)* }
%struct.sirfsoc_register = type { i32, i32 }
%struct.tty_struct = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SIRFUART_DUMMY_READ = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @sirfsoc_uart_pio_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_pio_rx_chars(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sirfsoc_uart_port*, align 8
  %7 = alloca %struct.sirfsoc_register*, align 8
  %8 = alloca %struct.sirfsoc_fifo_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tty_struct*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %12)
  store %struct.sirfsoc_uart_port* %13, %struct.sirfsoc_uart_port** %6, align 8
  %14 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %6, align 8
  %15 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.sirfsoc_register* %17, %struct.sirfsoc_register** %7, align 8
  %18 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %6, align 8
  %19 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.sirfsoc_fifo_status* %21, %struct.sirfsoc_fifo_status** %8, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call %struct.tty_struct* @tty_port_tty_get(i32* %25)
  store %struct.tty_struct* %26, %struct.tty_struct** %11, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %28 = icmp ne %struct.tty_struct* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %81

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %72, %60, %32
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %7, align 8
  %36 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rd_regl(%struct.uart_port* %34, i32 %37)
  %39 = load %struct.sirfsoc_fifo_status*, %struct.sirfsoc_fifo_status** %8, align 8
  %40 = getelementptr inbounds %struct.sirfsoc_fifo_status, %struct.sirfsoc_fifo_status* %39, i32 0, i32 0
  %41 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %40, align 8
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = call i32 %41(%struct.uart_port* %42)
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %73

47:                                               ; preds = %33
  %48 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %49 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %7, align 8
  %50 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rd_regl(%struct.uart_port* %48, i32 %51)
  %53 = load i32, i32* @SIRFUART_DUMMY_READ, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @uart_handle_sysrq_char(%struct.uart_port* %55, i32 %56)
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %33

61:                                               ; preds = %47
  %62 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @TTY_NORMAL, align 4
  %65 = call i32 @uart_insert_char(%struct.uart_port* %62, i32 0, i32 0, i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp uge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %73

72:                                               ; preds = %61
  br label %33

73:                                               ; preds = %71, %33
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
