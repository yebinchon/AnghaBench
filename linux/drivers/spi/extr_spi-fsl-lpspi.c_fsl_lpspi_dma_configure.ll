; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_dma_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_dma_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.fsl_lpspi_data = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@IMX7ULP_TDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"TX dma configuration failed with %d\0A\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@IMX7ULP_RDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"RX dma configuration failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*)* @fsl_lpspi_dma_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_dma_configure(%struct.spi_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_slave_config, align 8
  %7 = alloca %struct.dma_slave_config, align 8
  %8 = alloca %struct.fsl_lpspi_data*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  %9 = bitcast %struct.dma_slave_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  %10 = bitcast %struct.dma_slave_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %12 = call %struct.fsl_lpspi_data* @spi_controller_get_devdata(%struct.spi_controller* %11)
  store %struct.fsl_lpspi_data* %12, %struct.fsl_lpspi_data** %8, align 8
  %13 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %14 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @fsl_lpspi_bytes_per_word(i32 %16)
  switch i32 %17, label %24 [
    i32 4, label %18
    i32 2, label %20
    i32 1, label %22
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %78

27:                                               ; preds = %22, %20, %18
  %28 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %29 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %31 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IMX7ULP_TDR, align 8
  %34 = add nsw i64 %32, %33
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 6
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %40 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dmaengine_slave_config(i32 %41, %struct.dma_slave_config* %7)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %47 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %78

52:                                               ; preds = %27
  %53 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %54 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 5
  store i32 %53, i32* %54, align 8
  %55 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %56 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IMX7ULP_RDR, align 8
  %59 = add nsw i64 %57, %58
  %60 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 4
  store i64 %59, i64* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 3
  store i32 1, i32* %63, align 4
  %64 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %65 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dmaengine_slave_config(i32 %66, %struct.dma_slave_config* %6)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %52
  %71 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %72 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %70, %45, %24
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.fsl_lpspi_data* @spi_controller_get_devdata(%struct.spi_controller*) #2

declare dso_local i32 @fsl_lpspi_bytes_per_word(i32) #2

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
