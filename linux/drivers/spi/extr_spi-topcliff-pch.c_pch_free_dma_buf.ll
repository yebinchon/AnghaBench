; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_free_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_free_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_spi_board_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pch_spi_data = type { %struct.pch_spi_dma_ctrl }
%struct.pch_spi_dma_ctrl = type { i64, i32, i64, i32 }

@PCH_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_spi_board_data*, %struct.pch_spi_data*)* @pch_free_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_free_dma_buf(%struct.pch_spi_board_data* %0, %struct.pch_spi_data* %1) #0 {
  %3 = alloca %struct.pch_spi_board_data*, align 8
  %4 = alloca %struct.pch_spi_data*, align 8
  %5 = alloca %struct.pch_spi_dma_ctrl*, align 8
  store %struct.pch_spi_board_data* %0, %struct.pch_spi_board_data** %3, align 8
  store %struct.pch_spi_data* %1, %struct.pch_spi_data** %4, align 8
  %6 = load %struct.pch_spi_data*, %struct.pch_spi_data** %4, align 8
  %7 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %6, i32 0, i32 0
  store %struct.pch_spi_dma_ctrl* %7, %struct.pch_spi_dma_ctrl** %5, align 8
  %8 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %9 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.pch_spi_board_data*, %struct.pch_spi_board_data** %3, align 8
  %14 = getelementptr inbounds %struct.pch_spi_board_data, %struct.pch_spi_board_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* @PCH_BUF_SIZE, align 4
  %18 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %19 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %22 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_free_coherent(i32* %16, i32 %17, i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %12, %2
  %26 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %27 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.pch_spi_board_data*, %struct.pch_spi_board_data** %3, align 8
  %32 = getelementptr inbounds %struct.pch_spi_board_data, %struct.pch_spi_board_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* @PCH_BUF_SIZE, align 4
  %36 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %37 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %40 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @dma_free_coherent(i32* %34, i32 %35, i32 %38, i64 %41)
  br label %43

43:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
