; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_batch_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_max310x.c_max310x_batch_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.max310x_one = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32*, i32)* @max310x_batch_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max310x_batch_read(%struct.uart_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.max310x_one*, align 8
  %8 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.max310x_one* @to_max310x_port(%struct.uart_port* %9)
  store %struct.max310x_one* %10, %struct.max310x_one** %7, align 8
  %11 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 2
  %15 = load %struct.max310x_one*, %struct.max310x_one** %7, align 8
  %16 = getelementptr inbounds %struct.max310x_one, %struct.max310x_one* %15, i32 0, i32 0
  store i32* %16, i32** %14, align 8
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i64 1
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @to_spi_device(i32 %25)
  %27 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %28 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %8, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %28)
  %30 = call i32 @spi_sync_transfer(i32 %26, %struct.spi_transfer* %27, i32 %29)
  ret void
}

declare dso_local %struct.max310x_one* @to_max310x_port(%struct.uart_port*) #1

declare dso_local i32 @spi_sync_transfer(i32, %struct.spi_transfer*, i32) #1

declare dso_local i32 @to_spi_device(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
