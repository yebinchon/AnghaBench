; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@SPI_MCR_PCSIS = common dso_local global i32 0, align 4
@SPI_MCR_XSPI = common dso_local global i32 0, align 4
@SPI_MCR_MASTER = common dso_local global i32 0, align 4
@SPI_MCR = common dso_local global i32 0, align 4
@SPI_SR = common dso_local global i32 0, align 4
@SPI_SR_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dspi*)* @dspi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspi_init(%struct.fsl_dspi* %0) #0 {
  %2 = alloca %struct.fsl_dspi*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_dspi* %0, %struct.fsl_dspi** %2, align 8
  %4 = load i32, i32* @SPI_MCR_PCSIS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @SPI_MCR_XSPI, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %17 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @spi_controller_is_slave(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @SPI_MCR_MASTER, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %27 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SPI_MCR, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @regmap_write(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %33 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SPI_SR, align 4
  %36 = load i32, i32* @SPI_SR_CLEAR, align 4
  %37 = call i32 @regmap_write(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %39 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = load %struct.fsl_dspi*, %struct.fsl_dspi** %2, align 8
  %46 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @SPI_CTARE(i32 0)
  %49 = call i32 @SPI_CTARE_FMSZE(i32 0)
  %50 = call i32 @SPI_CTARE_DTCP(i32 1)
  %51 = or i32 %49, %50
  %52 = call i32 @regmap_write(i32 %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %44, %25
  ret void
}

declare dso_local i32 @spi_controller_is_slave(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SPI_CTARE(i32) #1

declare dso_local i32 @SPI_CTARE_FMSZE(i32) #1

declare dso_local i32 @SPI_CTARE_DTCP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
