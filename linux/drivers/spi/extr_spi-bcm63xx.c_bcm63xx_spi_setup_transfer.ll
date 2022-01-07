; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm63xx.c_bcm63xx_spi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm63xx.c_bcm63xx_spi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i64 }
%struct.bcm63xx_spi = type { i32 }

@SPI_CLK_0_391MHZ = common dso_local global i32 0, align 4
@SPI_CLK_MASK = common dso_local global i32 0, align 4
@bcm63xx_spi_freq_table = common dso_local global i64** null, align 8
@SPI_CLK_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Setting clock register to %02x (hz %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @bcm63xx_spi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_spi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.bcm63xx_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.bcm63xx_spi* @spi_master_get_devdata(i32 %11)
  store %struct.bcm63xx_spi* %12, %struct.bcm63xx_spi** %5, align 8
  %13 = load i32, i32* @SPI_CLK_0_391MHZ, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %40, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @SPI_CLK_MASK, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64**, i64*** @bcm63xx_spi_freq_table, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64*, i64** %22, i64 %24
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %21, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %18
  %31 = load i64**, i64*** @bcm63xx_spi_freq_table, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %43

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %14

43:                                               ; preds = %30, %14
  %44 = load %struct.bcm63xx_spi*, %struct.bcm63xx_spi** %5, align 8
  %45 = load i32, i32* @SPI_CLK_CFG, align 4
  %46 = call i32 @bcm_spi_readb(%struct.bcm63xx_spi* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @SPI_CLK_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.bcm63xx_spi*, %struct.bcm63xx_spi** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SPI_CLK_CFG, align 4
  %57 = call i32 @bcm_spi_writeb(%struct.bcm63xx_spi* %54, i32 %55, i32 %56)
  %58 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %63)
  ret void
}

declare dso_local %struct.bcm63xx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @bcm_spi_readb(%struct.bcm63xx_spi*, i32) #1

declare dso_local i32 @bcm_spi_writeb(%struct.bcm63xx_spi*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
