; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_fintek.c_fintek_8250_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fintek_8250*, i32 }
%struct.fintek_8250 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fintek_8250_probe(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.fintek_8250*, align 8
  %5 = alloca %struct.fintek_8250, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %7 = call i64 @probe_setup_port(%struct.fintek_8250* %5, %struct.uart_8250_port* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.fintek_8250* @devm_kzalloc(i32 %16, i32 4, i32 %17)
  store %struct.fintek_8250* %18, %struct.fintek_8250** %4, align 8
  %19 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %20 = icmp ne %struct.fintek_8250* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %35

24:                                               ; preds = %12
  %25 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %26 = call i32 @memcpy(%struct.fintek_8250* %25, %struct.fintek_8250* %5, i32 4)
  %27 = load %struct.fintek_8250*, %struct.fintek_8250** %4, align 8
  %28 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.fintek_8250* %27, %struct.fintek_8250** %30, align 8
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %32 = call i32 @fintek_8250_set_rs485_handler(%struct.uart_8250_port* %31)
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %34 = call i32 @fintek_8250_set_termios_handler(%struct.uart_8250_port* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %24, %21, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @probe_setup_port(%struct.fintek_8250*, %struct.uart_8250_port*) #1

declare dso_local %struct.fintek_8250* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.fintek_8250*, %struct.fintek_8250*, i32) #1

declare dso_local i32 @fintek_8250_set_rs485_handler(%struct.uart_8250_port*) #1

declare dso_local i32 @fintek_8250_set_termios_handler(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
