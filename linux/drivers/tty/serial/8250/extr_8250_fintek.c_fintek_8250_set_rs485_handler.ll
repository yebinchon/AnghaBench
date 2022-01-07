; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_set_rs485_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_set_rs485_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.fintek_8250* }
%struct.fintek_8250 = type { i32 }

@fintek_8250_rs485_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @fintek_8250_set_rs485_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fintek_8250_set_rs485_handler(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.fintek_8250*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %4 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.fintek_8250*, %struct.fintek_8250** %6, align 8
  store %struct.fintek_8250* %7, %struct.fintek_8250** %3, align 8
  %8 = load %struct.fintek_8250*, %struct.fintek_8250** %3, align 8
  %9 = getelementptr inbounds %struct.fintek_8250, %struct.fintek_8250* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %16 [
    i32 131, label %11
    i32 130, label %11
    i32 128, label %11
    i32 129, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = load i32, i32* @fintek_8250_rs485_config, align 4
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
