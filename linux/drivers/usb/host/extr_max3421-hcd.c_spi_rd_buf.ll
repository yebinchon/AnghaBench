; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_spi_rd_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_spi_rd_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.max3421_hcd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.spi_transfer = type { i32*, i32, i8* }
%struct.spi_message = type { i32 }

@MAX3421_SPI_REG_SHIFT = common dso_local global i32 0, align 4
@MAX3421_SPI_DIR_RD = common dso_local global i32 0, align 4
@MAX3421_SPI_DIR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, i32, i8*, i64)* @spi_rd_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_rd_buf(%struct.usb_hcd* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca %struct.max3421_hcd*, align 8
  %11 = alloca [2 x %struct.spi_transfer], align 16
  %12 = alloca %struct.spi_message, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.spi_device* @to_spi_device(i32 %16)
  store %struct.spi_device* %17, %struct.spi_device** %9, align 8
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %19 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %18)
  store %struct.max3421_hcd* %19, %struct.max3421_hcd** %10, align 8
  %20 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %21 = call i32 @memset(%struct.spi_transfer* %20, i32 0, i32 48)
  %22 = call i32 @spi_message_init(%struct.spi_message* %12)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAX3421_SPI_REG_SHIFT, align 4
  %25 = call i32 @field(i32 %23, i32 %24)
  %26 = load i32, i32* @MAX3421_SPI_DIR_RD, align 4
  %27 = load i32, i32* @MAX3421_SPI_DIR_SHIFT, align 4
  %28 = call i32 @field(i32 %26, i32 %27)
  %29 = or i32 %25, %28
  %30 = load %struct.max3421_hcd*, %struct.max3421_hcd** %10, align 8
  %31 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %29, i32* %35, align 4
  %36 = load %struct.max3421_hcd*, %struct.max3421_hcd** %10, align 8
  %37 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %42 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 16
  %43 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %53 = call i32 @spi_message_add_tail(%struct.spi_transfer* %52, %struct.spi_message* %12)
  %54 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %55 = call i32 @spi_message_add_tail(%struct.spi_transfer* %54, %struct.spi_message* %12)
  %56 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %57 = call i32 @spi_sync(%struct.spi_device* %56, %struct.spi_message* %12)
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
