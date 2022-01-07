; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynq_qspi_setuprxdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynq_qspi_setuprxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_qspi = type { i32, i32, i32, i32, i32, i64 }

@GQSPI_DMA_UNALIGN = common dso_local global i32 0, align 4
@GQSPI_CONFIG_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_MODE_EN_MASK = common dso_local global i32 0, align 4
@GQSPI_MODE_IO = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ERR:rxdma:memory not mapped\0A\00", align 1
@GQSPI_QSPIDMA_DST_ADDR_OFST = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_ADDR_MSB_OFST = common dso_local global i32 0, align 4
@GQSPI_CFG_MODE_EN_DMA_MASK = common dso_local global i32 0, align 4
@GQSPI_MODE_DMA = common dso_local global i32 0, align 4
@GQSPI_QSPIDMA_DST_SIZE_OFST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_qspi*)* @zynq_qspi_setuprxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_qspi_setuprxdma(%struct.zynqmp_qspi* %0) #0 {
  %2 = alloca %struct.zynqmp_qspi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zynqmp_qspi* %0, %struct.zynqmp_qspi** %2, align 8
  %8 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %9 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %13 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GQSPI_DMA_UNALIGN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16, %1
  %22 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %23 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %24 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @GQSPI_CFG_MODE_EN_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %30 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @GQSPI_MODE_IO, align 4
  %34 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %35 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %37 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %109

38:                                               ; preds = %16
  %39 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %40 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %41, 4
  store i32 %42, i32* %4, align 4
  %43 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %44 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %3, align 4
  %48 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %49 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %52 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i32 @dma_map_single(i32 %50, i8* %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %59 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @dma_mapping_error(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %38
  %65 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %66 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %38
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %72 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %75 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %77 = load i32, i32* @GQSPI_QSPIDMA_DST_ADDR_OFST, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 16
  %82 = ashr i32 %81, 16
  store i32 %82, i32* %6, align 4
  %83 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %84 = load i32, i32* @GQSPI_QSPIDMA_DST_ADDR_MSB_OFST, align 4
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, 4095
  %87 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %83, i32 %84, i32 %86)
  %88 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %89 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %90 = call i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @GQSPI_CFG_MODE_EN_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @GQSPI_CFG_MODE_EN_DMA_MASK, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %99 = load i32, i32* @GQSPI_CONFIG_OFST, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %98, i32 %99, i32 %100)
  %102 = load i32, i32* @GQSPI_MODE_DMA, align 4
  %103 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %104 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %2, align 8
  %106 = load i32, i32* @GQSPI_QSPIDMA_DST_SIZE_OFST, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %69, %21
  ret void
}

declare dso_local i32 @zynqmp_gqspi_read(%struct.zynqmp_qspi*, i32) #1

declare dso_local i32 @zynqmp_gqspi_write(%struct.zynqmp_qspi*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
