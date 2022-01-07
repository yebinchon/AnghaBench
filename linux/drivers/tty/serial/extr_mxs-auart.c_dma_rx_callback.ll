; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_dma_rx_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_dma_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@REG_STAT = common dso_local global i32 0, align 4
@AUART_STAT_OERR = common dso_local global i32 0, align 4
@AUART_STAT_BERR = common dso_local global i32 0, align 4
@AUART_STAT_PERR = common dso_local global i32 0, align 4
@AUART_STAT_FERR = common dso_local global i32 0, align 4
@AUART_STAT_RXCOUNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dma_rx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_rx_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mxs_auart_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mxs_auart_port*
  store %struct.mxs_auart_port* %8, %struct.mxs_auart_port** %3, align 8
  %9 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %10 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.tty_port* %13, %struct.tty_port** %4, align 8
  %14 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %15 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %18 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %17, i32 0, i32 1
  %19 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %20 = call i32 @dma_unmap_sg(i32 %16, i32* %18, i32 1, i32 %19)
  %21 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %22 = load i32, i32* @REG_STAT, align 4
  %23 = call i32 @mxs_read(%struct.mxs_auart_port* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @AUART_STAT_OERR, align 4
  %25 = load i32, i32* @AUART_STAT_BERR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AUART_STAT_PERR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AUART_STAT_FERR, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @AUART_STAT_RXCOUNT_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %38 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %39 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @tty_insert_flip_string(%struct.tty_port* %37, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %45 = load i32, i32* @REG_STAT, align 4
  %46 = call i32 @mxs_write(i32 %43, %struct.mxs_auart_port* %44, i32 %45)
  %47 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %48 = call i32 @tty_flip_buffer_push(%struct.tty_port* %47)
  %49 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %50 = call i32 @mxs_auart_dma_prep_rx(%struct.mxs_auart_port* %49)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @mxs_write(i32, %struct.mxs_auart_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @mxs_auart_dma_prep_rx(%struct.mxs_auart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
