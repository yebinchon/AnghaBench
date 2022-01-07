; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_start_next_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_start_next_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { i64, %struct.TYPE_3__*, %struct.uart_port }
%struct.TYPE_3__ = type { i32 }
%struct.uart_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_uart_port*)* @s3c24xx_serial_start_next_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_start_next_tx(%struct.s3c24xx_uart_port* %0) #0 {
  %2 = alloca %struct.s3c24xx_uart_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %2, align 8
  %6 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %6, i32 0, i32 2
  store %struct.uart_port* %7, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.circ_buf* %11, %struct.circ_buf** %4, align 8
  %12 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %13 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %16 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UART_XMIT_SIZE, align 4
  %19 = call i64 @CIRC_CNT_TO_END(i32 %14, i32 %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = call i32 @s3c24xx_serial_stop_tx(%struct.uart_port* %23)
  br label %58

25:                                               ; preds = %1
  %26 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %40 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %45 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (...) @dma_get_cache_alignment()
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43, %37, %30, %25
  %52 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %53 = call i32 @s3c24xx_serial_start_tx_pio(%struct.s3c24xx_uart_port* %52)
  br label %58

54:                                               ; preds = %43
  %55 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @s3c24xx_serial_start_tx_dma(%struct.s3c24xx_uart_port* %55, i64 %56)
  br label %58

58:                                               ; preds = %22, %54, %51
  ret void
}

declare dso_local i64 @CIRC_CNT_TO_END(i32, i32, i32) #1

declare dso_local i32 @s3c24xx_serial_stop_tx(%struct.uart_port*) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local i32 @s3c24xx_serial_start_tx_pio(%struct.s3c24xx_uart_port*) #1

declare dso_local i32 @s3c24xx_serial_start_tx_dma(%struct.s3c24xx_uart_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
