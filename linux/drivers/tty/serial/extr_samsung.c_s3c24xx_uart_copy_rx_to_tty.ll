; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_uart_copy_rx_to_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_uart_copy_rx_to_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.TYPE_4__, %struct.s3c24xx_uart_dma* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.s3c24xx_uart_dma = type { i64, i32, i32 }
%struct.tty_port = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No tty port\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"RxData copy to tty layer failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_uart_port*, %struct.tty_port*, i32)* @s3c24xx_uart_copy_rx_to_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_uart_copy_rx_to_tty(%struct.s3c24xx_uart_port* %0, %struct.tty_port* %1, i32 %2) #0 {
  %4 = alloca %struct.s3c24xx_uart_port*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s3c24xx_uart_dma*, align 8
  %8 = alloca i32, align 4
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %4, align 8
  store %struct.tty_port* %1, %struct.tty_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %9, i32 0, i32 1
  %11 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %10, align 8
  store %struct.s3c24xx_uart_dma* %11, %struct.s3c24xx_uart_dma** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %63

15:                                               ; preds = %3
  %16 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %7, align 8
  %21 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %7, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_sync_single_for_cpu(i32 %19, i32 %22, i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %36 = icmp ne %struct.tty_port* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %15
  %38 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %63

43:                                               ; preds = %15
  %44 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %45 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %45, i32 0, i32 1
  %47 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %46, align 8
  %48 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @tty_insert_flip_string(%struct.tty_port* %44, i8* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = call i32 @WARN_ON(i32 1)
  %58 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %4, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %14, %37, %56, %43
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
