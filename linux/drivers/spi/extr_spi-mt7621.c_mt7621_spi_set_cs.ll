; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mt7621.c_mt7621_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.mt7621_spi = type { i64 }

@MT7621_SPI_MASTER = common dso_local global i32 0, align 4
@MASTER_RS_SLAVE_SEL = common dso_local global i32 0, align 4
@MASTER_MORE_BUFMODE = common dso_local global i32 0, align 4
@MASTER_FULL_DUPLEX = common dso_local global i32 0, align 4
@MT7621_SPI_POLAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @mt7621_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7621_spi_set_cs(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7621_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.mt7621_spi* @spidev_to_mt7621_spi(%struct.spi_device* %9)
  store %struct.mt7621_spi* %10, %struct.mt7621_spi** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.mt7621_spi*, %struct.mt7621_spi** %5, align 8
  %15 = load i32, i32* @MT7621_SPI_MASTER, align 4
  %16 = call i32 @mt7621_spi_read(%struct.mt7621_spi* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @MASTER_RS_SLAVE_SEL, align 4
  %18 = load i32, i32* @MASTER_MORE_BUFMODE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @MASTER_FULL_DUPLEX, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.mt7621_spi*, %struct.mt7621_spi** %5, align 8
  %27 = load i32, i32* @MT7621_SPI_MASTER, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mt7621_spi_write(%struct.mt7621_spi* %26, i32 %27, i32 %28)
  %30 = load %struct.mt7621_spi*, %struct.mt7621_spi** %5, align 8
  %31 = getelementptr inbounds %struct.mt7621_spi, %struct.mt7621_spi* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @BIT(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.mt7621_spi*, %struct.mt7621_spi** %5, align 8
  %39 = load i32, i32* @MT7621_SPI_POLAR, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mt7621_spi_write(%struct.mt7621_spi* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local %struct.mt7621_spi* @spidev_to_mt7621_spi(%struct.spi_device*) #1

declare dso_local i32 @mt7621_spi_read(%struct.mt7621_spi*, i32) #1

declare dso_local i32 @mt7621_spi_write(%struct.mt7621_spi*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
