; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_sdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_sdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_imx_data = type { i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.spi_master = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"fsl,imx6dl\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"can't get the TX DMA channel, error %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"can't get the RX DMA channel, error %d\0A\00", align 1
@spi_imx_can_dma = common dso_local global i32 0, align 4
@MAX_SDMA_BD_BYTES = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_RX = common dso_local global i32 0, align 4
@SPI_MASTER_MUST_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.spi_imx_data*, %struct.spi_master*)* @spi_imx_sdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_sdma_init(%struct.device* %0, %struct.spi_imx_data* %1, %struct.spi_master* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.spi_imx_data*, align 8
  %7 = alloca %struct.spi_master*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.spi_imx_data* %1, %struct.spi_imx_data** %6, align 8
  store %struct.spi_master* %2, %struct.spi_master** %7, align 8
  %9 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

12:                                               ; preds = %3
  %13 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %14 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 2
  %19 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %20 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i8* @dma_request_slave_channel_reason(%struct.device* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %25 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %27 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @IS_ERR(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %12
  %32 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %33 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @PTR_ERR(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_dbg(%struct.device* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %40 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  br label %83

41:                                               ; preds = %12
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i8* @dma_request_slave_channel_reason(%struct.device* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %46 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %48 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %41
  %53 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %54 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dev_dbg(%struct.device* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %61 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  br label %83

62:                                               ; preds = %41
  %63 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %64 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %63, i32 0, i32 3
  %65 = call i32 @init_completion(i32* %64)
  %66 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %67 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %66, i32 0, i32 2
  %68 = call i32 @init_completion(i32* %67)
  %69 = load i32, i32* @spi_imx_can_dma, align 4
  %70 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %71 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @MAX_SDMA_BD_BYTES, align 4
  %73 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %74 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @SPI_MASTER_MUST_RX, align 4
  %76 = load i32, i32* @SPI_MASTER_MUST_TX, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %79 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 4
  store i32 0, i32* %4, align 4
  br label %87

83:                                               ; preds = %52, %31
  %84 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %85 = call i32 @spi_imx_sdma_exit(%struct.spi_imx_data* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %62, %11
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

declare dso_local i8* @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spi_imx_sdma_exit(%struct.spi_imx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
