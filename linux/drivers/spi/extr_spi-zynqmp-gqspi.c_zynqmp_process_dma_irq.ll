; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_process_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_process_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_qspi = type { i32, i32, i64, i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_I_DIS_OFST = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_I_EN_DONE_MASK = common dso_local global i32 0, align 4
@GQSPI_CONFIG_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_MODE_EN_MASK = common dso_local global i32 0, align 4
@GQSPI_GEN_FIFO_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_START_GEN_FIFO_MASK = common dso_local global i32 0, align 4
@GQSPI_IER_OFST = common dso_local global i32 0, align 4
@GQSPI_IER_GENFIFOEMPTY_MASK = common dso_local global i32 0, align 4
@GQSPI_IER_RXNEMPTY_MASK = common dso_local global i32 0, align 4
@GQSPI_IER_RXEMPTY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_qspi*)* @zynqmp_process_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_process_dma_irq(%struct.zynqmp_qspi* %0) #0 {
  %2 = alloca %struct.zynqmp_qspi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.zynqmp_qspi* %0, %struct.zynqmp_qspi** %2, align 8
  %5 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %6 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %9 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %12 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %15 = call i32 @dma_unmap_single(i32 %7, i32 %10, i64 %13, i32 %14)
  %16 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %17 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %20 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 8
  %25 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %26 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %29 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %35 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %37 = load i32, i32* @GQSPI_QSPIDMA_DST_I_DIS_OFST, align 4
  %38 = load i32, i32* @GQSPI_QSPIDMA_DST_I_EN_DONE_MASK, align 4
  %39 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %36, i32 %37, i32 %38)
  %40 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %41 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %1
  %45 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %46 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %47 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @GQSPI_CFG_MODE_EN_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %53 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %52, i32 %53, i32 %54)
  %56 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %57 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %4, align 4
  %59 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %60 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %65 = load i32, i32* @GQSPI_GEN_FIFO_OFST, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %64, i32 %65, i32 %66)
  %68 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %69 = load i32, i32* @GQSPI_GEN_FIFO_OFST, align 4
  %70 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %68, i32 %69, i32 0)
  %71 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %72 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %73 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %74 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %75 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %73, i32 %74)
  %76 = load i32, i32* @GQSPI_CFG_START_GEN_FIFO_MASK, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %71, i32 %72, i32 %77)
  %79 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %80 = load i32, i32* @GQSPI_IER_OFST, align 4
  %81 = load i32, i32* @GQSPI_IER_GENFIFOEMPTY_MASK, align 4
  %82 = load i32, i32* @GQSPI_IER_RXNEMPTY_MASK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @GQSPI_IER_RXEMPTY_MASK, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %79, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi*, i32, i32) #1

declare dso_local i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
