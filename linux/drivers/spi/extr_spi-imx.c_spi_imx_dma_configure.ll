; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_dma_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_dma_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i64, i32, i32, i64 }
%struct.spi_imx_data = type { i32, i32, i64, i32 }

@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@MXC_CSPITXDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"TX dma configuration failed with %d\0A\00", align 1
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@MXC_CSPIRXDATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"RX dma configuration failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*)* @spi_imx_dma_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_dma_configure(%struct.spi_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_slave_config, align 8
  %7 = alloca %struct.dma_slave_config, align 8
  %8 = alloca %struct.spi_imx_data*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  %9 = bitcast %struct.dma_slave_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  %10 = bitcast %struct.dma_slave_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %12 = call %struct.spi_imx_data* @spi_master_get_devdata(%struct.spi_master* %11)
  store %struct.spi_imx_data* %12, %struct.spi_imx_data** %8, align 8
  %13 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %14 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @spi_imx_bytes_per_word(i32 %15)
  switch i32 %16, label %23 [
    i32 4, label %17
    i32 2, label %19
    i32 1, label %21
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %18, i32* %5, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %83

26:                                               ; preds = %21, %19, %17
  %27 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %28 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %30 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MXC_CSPITXDATA, align 8
  %33 = add nsw i64 %31, %32
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 6
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %38 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %7, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %42 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dmaengine_slave_config(i32 %43, %struct.dma_slave_config* %7)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %26
  %48 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %49 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %83

54:                                               ; preds = %26
  %55 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %56 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %58 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MXC_CSPIRXDATA, align 8
  %61 = add nsw i64 %59, %60
  %62 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 3
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %66 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %70 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dmaengine_slave_config(i32 %71, %struct.dma_slave_config* %6)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %54
  %76 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %77 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %75, %47, %23
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(%struct.spi_master*) #2

declare dso_local i32 @spi_imx_bytes_per_word(i32) #2

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
