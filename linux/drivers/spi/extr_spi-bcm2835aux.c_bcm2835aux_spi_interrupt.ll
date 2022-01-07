; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835aux.c_bcm2835aux_spi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.bcm2835aux_spi = type { i32*, i32, i32 }

@BCM2835_AUX_SPI_CNTL1 = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL1_TXEMPTY = common dso_local global i32 0, align 4
@BCM2835_AUX_SPI_CNTL1_IDLE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm2835aux_spi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835aux_spi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_master*, align 8
  %7 = alloca %struct.bcm2835aux_spi*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.spi_master*
  store %struct.spi_master* %9, %struct.spi_master** %6, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %11 = call %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.bcm2835aux_spi* %11, %struct.bcm2835aux_spi** %7, align 8
  %12 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %13 = load i32, i32* @BCM2835_AUX_SPI_CNTL1, align 4
  %14 = call i32 @bcm2835aux_rd(%struct.bcm2835aux_spi* %12, i32 %13)
  %15 = load i32, i32* @BCM2835_AUX_SPI_CNTL1_TXEMPTY, align 4
  %16 = load i32, i32* @BCM2835_AUX_SPI_CNTL1_IDLE, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %2
  %23 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %24 = call i32 @bcm2835aux_spi_transfer_helper(%struct.bcm2835aux_spi* %23)
  %25 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %26 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %31 = load i32, i32* @BCM2835_AUX_SPI_CNTL1, align 4
  %32 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %33 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BCM2835_AUX_SPI_CNTL1_IDLE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %30, i32 %31, i32 %38)
  br label %40

40:                                               ; preds = %29, %22
  %41 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %42 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %47 = load i32, i32* @BCM2835_AUX_SPI_CNTL1, align 4
  %48 = load %struct.bcm2835aux_spi*, %struct.bcm2835aux_spi** %7, align 8
  %49 = getelementptr inbounds %struct.bcm2835aux_spi, %struct.bcm2835aux_spi* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bcm2835aux_wr(%struct.bcm2835aux_spi* %46, i32 %47, i32 %52)
  %54 = load %struct.spi_master*, %struct.spi_master** %6, align 8
  %55 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %54, i32 0, i32 0
  %56 = call i32 @complete(i32* %55)
  br label %57

57:                                               ; preds = %45, %40
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.bcm2835aux_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @bcm2835aux_rd(%struct.bcm2835aux_spi*, i32) #1

declare dso_local i32 @bcm2835aux_spi_transfer_helper(%struct.bcm2835aux_spi*) #1

declare dso_local i32 @bcm2835aux_wr(%struct.bcm2835aux_spi*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
