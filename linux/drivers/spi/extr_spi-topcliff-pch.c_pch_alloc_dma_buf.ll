; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_alloc_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-topcliff-pch.c_pch_alloc_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_spi_board_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pch_spi_data = type { %struct.pch_spi_dma_ctrl }
%struct.pch_spi_dma_ctrl = type { i8*, i32, i8*, i32 }

@PCH_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_spi_board_data*, %struct.pch_spi_data*)* @pch_alloc_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_alloc_dma_buf(%struct.pch_spi_board_data* %0, %struct.pch_spi_data* %1) #0 {
  %3 = alloca %struct.pch_spi_board_data*, align 8
  %4 = alloca %struct.pch_spi_data*, align 8
  %5 = alloca %struct.pch_spi_dma_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.pch_spi_board_data* %0, %struct.pch_spi_board_data** %3, align 8
  store %struct.pch_spi_data* %1, %struct.pch_spi_data** %4, align 8
  %7 = load %struct.pch_spi_data*, %struct.pch_spi_data** %4, align 8
  %8 = getelementptr inbounds %struct.pch_spi_data, %struct.pch_spi_data* %7, i32 0, i32 0
  store %struct.pch_spi_dma_ctrl* %8, %struct.pch_spi_dma_ctrl** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.pch_spi_board_data*, %struct.pch_spi_board_data** %3, align 8
  %10 = getelementptr inbounds %struct.pch_spi_board_data, %struct.pch_spi_board_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @PCH_BUF_SIZE, align 4
  %14 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %15 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %14, i32 0, i32 3
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @dma_alloc_coherent(i32* %12, i32 %13, i32* %15, i32 %16)
  %18 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %19 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.pch_spi_board_data*, %struct.pch_spi_board_data** %3, align 8
  %29 = getelementptr inbounds %struct.pch_spi_board_data, %struct.pch_spi_board_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @PCH_BUF_SIZE, align 4
  %33 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %34 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @dma_alloc_coherent(i32* %31, i32 %32, i32* %34, i32 %35)
  %37 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %38 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.pch_spi_dma_ctrl*, %struct.pch_spi_dma_ctrl** %5, align 8
  %40 = getelementptr inbounds %struct.pch_spi_dma_ctrl, %struct.pch_spi_dma_ctrl* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %27
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %27
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
