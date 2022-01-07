; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_uart_dma_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_uart_dma_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sprd_uart_port = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"fail to start RX dma mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.sprd_uart_port*)* @sprd_uart_dma_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_uart_dma_startup(%struct.uart_port* %0, %struct.sprd_uart_port* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.sprd_uart_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.sprd_uart_port* %1, %struct.sprd_uart_port** %4, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call i32 @sprd_request_dma(%struct.uart_port* %6)
  %8 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %4, align 8
  %9 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %4, align 8
  %15 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %41

20:                                               ; preds = %13, %2
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = call i32 @sprd_start_dma_rx(%struct.uart_port* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %4, align 8
  %30 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dma_release_channel(i32 %32)
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %25, %20
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = call i32 @sprd_uart_dma_enable(%struct.uart_port* %39, i32 1)
  br label %41

41:                                               ; preds = %38, %19
  ret void
}

declare dso_local i32 @sprd_request_dma(%struct.uart_port*) #1

declare dso_local i32 @sprd_start_dma_rx(%struct.uart_port*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @sprd_uart_dma_enable(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
