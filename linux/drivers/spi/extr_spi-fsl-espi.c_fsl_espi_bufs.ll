; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i64 }
%struct.fsl_espi = type { i32, i32, i32, i32 }

@SPI_NBITS_DUAL = common dso_local global i64 0, align 8
@SPCOM_DO = common dso_local global i32 0, align 4
@ESPI_SPCOM = common dso_local global i32 0, align 4
@SPIM_DON = common dso_local global i32 0, align 4
@FSL_ESPI_FIFO_SIZE = common dso_local global i32 0, align 4
@SPIM_RXT = common dso_local global i32 0, align 4
@ESPI_SPIM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Transfer timed out!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @fsl_espi_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_espi_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.fsl_espi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.fsl_espi* @spi_master_get_devdata(i32 %12)
  store %struct.fsl_espi* %13, %struct.fsl_espi** %5, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %17, i32 0, i32 2
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SPCOM_CS(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub i32 %26, 1
  %28 = call i32 @SPCOM_TRANLEN(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %32 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %2
  %36 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %37 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SPCOM_RXSKIP(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %46 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %44, %47
  store i32 %48, i32* %6, align 4
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SPI_NBITS_DUAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %35
  %55 = load i32, i32* @SPCOM_DO, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %35
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %61 = load i32, i32* @ESPI_SPCOM, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @fsl_espi_write_reg(%struct.fsl_espi* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @SPIM_DON, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @FSL_ESPI_FIFO_SIZE, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @SPIM_RXT, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %74 = load i32, i32* @ESPI_SPIM, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @fsl_espi_write_reg(%struct.fsl_espi* %73, i32 %74, i32 %75)
  %77 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %78 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %77, i32 0, i32 3
  %79 = call i32 @spin_lock_irq(i32* %78)
  %80 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %81 = call i32 @fsl_espi_fill_tx_fifo(%struct.fsl_espi* %80, i32 0)
  %82 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %83 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %82, i32 0, i32 3
  %84 = call i32 @spin_unlock_irq(i32* %83)
  %85 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %86 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %85, i32 0, i32 2
  %87 = load i32, i32* @HZ, align 4
  %88 = mul nsw i32 2, %87
  %89 = call i32 @wait_for_completion_timeout(i32* %86, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %72
  %93 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %94 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %72
  %98 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %99 = load i32, i32* @ESPI_SPIM, align 4
  %100 = call i32 @fsl_espi_write_reg(%struct.fsl_espi* %98, i32 %99, i32 0)
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @ETIMEDOUT, align 4
  %105 = sub nsw i32 0, %104
  br label %107

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi i32 [ %105, %103 ], [ 0, %106 ]
  ret i32 %108
}

declare dso_local %struct.fsl_espi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @SPCOM_CS(i32) #1

declare dso_local i32 @SPCOM_TRANLEN(i32) #1

declare dso_local i32 @SPCOM_RXSKIP(i32) #1

declare dso_local i32 @fsl_espi_write_reg(%struct.fsl_espi*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @fsl_espi_fill_tx_fifo(%struct.fsl_espi*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
