; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i64 }
%struct.spi_message = type { %struct.spi_device* }
%struct.spi_device = type { i64 }
%struct.bcm2835_spi = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_message*)* @bcm2835_spi_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_prepare_message(%struct.spi_controller* %0, %struct.spi_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_message*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.bcm2835_spi*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_message* %1, %struct.spi_message** %5, align 8
  %9 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %10 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %9, i32 0, i32 0
  %11 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  store %struct.spi_device* %11, %struct.spi_device** %6, align 8
  %12 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %13 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %12)
  store %struct.bcm2835_spi* %13, %struct.bcm2835_spi** %7, align 8
  %14 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %15 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %20 = load %struct.spi_message*, %struct.spi_message** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @GFP_DMA, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @spi_split_transfers_maxsize(%struct.spi_controller* %19, %struct.spi_message* %20, i32 65532, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %7, align 8
  %32 = load i32, i32* @BCM2835_SPI_CS, align 4
  %33 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %7, align 8
  %34 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %31, i32 %32, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %30, %27
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @spi_split_transfers_maxsize(%struct.spi_controller*, %struct.spi_message*, i32, i32) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
