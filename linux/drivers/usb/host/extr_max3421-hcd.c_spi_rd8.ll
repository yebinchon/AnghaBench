; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_spi_rd8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_spi_rd8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.max3421_hcd = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32* }
%struct.spi_message = type { i32 }

@MAX3421_SPI_REG_SHIFT = common dso_local global i32 0, align 4
@MAX3421_SPI_DIR_RD = common dso_local global i32 0, align 4
@MAX3421_SPI_DIR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32)* @spi_rd8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_rd8(%struct.usb_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max3421_hcd*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer, align 8
  %8 = alloca %struct.spi_message, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %9)
  store %struct.max3421_hcd* %10, %struct.max3421_hcd** %5, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.spi_device* @to_spi_device(i32 %14)
  store %struct.spi_device* %15, %struct.spi_device** %6, align 8
  %16 = call i32 @memset(%struct.spi_transfer* %7, i32 0, i32 24)
  %17 = call i32 @spi_message_init(%struct.spi_message* %8)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX3421_SPI_REG_SHIFT, align 4
  %20 = call i32 @field(i32 %18, i32 %19)
  %21 = load i32, i32* @MAX3421_SPI_DIR_RD, align 4
  %22 = load i32, i32* @MAX3421_SPI_DIR_SHIFT, align 4
  %23 = call i32 @field(i32 %21, i32 %22)
  %24 = or i32 %20, %23
  %25 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %26 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %24, i32* %30, align 4
  %31 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 0
  store i32* %35, i32** %36, align 8
  %37 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %38 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 2
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 1
  store i32 2, i32* %43, align 8
  %44 = call i32 @spi_message_add_tail(%struct.spi_transfer* %7, %struct.spi_message* %8)
  %45 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %46 = call i32 @spi_sync(%struct.spi_device* %45, %struct.spi_message* %8)
  %47 = load %struct.max3421_hcd*, %struct.max3421_hcd** %5, align 8
  %48 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  ret i32 %53
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @field(i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
