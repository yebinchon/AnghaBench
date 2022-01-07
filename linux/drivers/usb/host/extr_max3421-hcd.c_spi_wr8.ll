; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_spi_wr8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_spi_wr8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.max3421_hcd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.spi_transfer = type { i32*, i32 }
%struct.spi_message = type { i32 }

@MAX3421_SPI_REG_SHIFT = common dso_local global i32 0, align 4
@MAX3421_SPI_DIR_WR = common dso_local global i32 0, align 4
@MAX3421_SPI_DIR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, i32, i32)* @spi_wr8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_wr8(%struct.usb_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.max3421_hcd*, align 8
  %9 = alloca %struct.spi_transfer, align 8
  %10 = alloca %struct.spi_message, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.spi_device* @to_spi_device(i32 %14)
  store %struct.spi_device* %15, %struct.spi_device** %7, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %17 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %16)
  store %struct.max3421_hcd* %17, %struct.max3421_hcd** %8, align 8
  %18 = call i32 @memset(%struct.spi_transfer* %9, i32 0, i32 16)
  %19 = call i32 @spi_message_init(%struct.spi_message* %10)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MAX3421_SPI_REG_SHIFT, align 4
  %22 = call i32 @field(i32 %20, i32 %21)
  %23 = load i32, i32* @MAX3421_SPI_DIR_WR, align 4
  %24 = load i32, i32* @MAX3421_SPI_DIR_SHIFT, align 4
  %25 = call i32 @field(i32 %23, i32 %24)
  %26 = or i32 %22, %25
  %27 = load %struct.max3421_hcd*, %struct.max3421_hcd** %8, align 8
  %28 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %26, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.max3421_hcd*, %struct.max3421_hcd** %8, align 8
  %35 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %33, i32* %39, align 4
  %40 = load %struct.max3421_hcd*, %struct.max3421_hcd** %8, align 8
  %41 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 0
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %9, i32 0, i32 1
  store i32 2, i32* %46, align 8
  %47 = call i32 @spi_message_add_tail(%struct.spi_transfer* %9, %struct.spi_message* %10)
  %48 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %49 = call i32 @spi_sync(%struct.spi_device* %48, %struct.spi_message* %10)
  ret void
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

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
