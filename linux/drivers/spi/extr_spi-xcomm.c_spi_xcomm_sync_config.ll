; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xcomm.c_spi_xcomm_sync_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xcomm.c_spi_xcomm_sync_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_xcomm = type { i32, i32, i32, i32* }

@SPI_XCOMM_SETTINGS_LEN_OFFSET = common dso_local global i32 0, align 4
@SPI_XCOMM_CMD_UPDATE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_xcomm*, i32)* @spi_xcomm_sync_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_xcomm_sync_config(%struct.spi_xcomm* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_xcomm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.spi_xcomm* %0, %struct.spi_xcomm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spi_xcomm*, %struct.spi_xcomm** %3, align 8
  %8 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.spi_xcomm*, %struct.spi_xcomm** %3, align 8
  %11 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SPI_XCOMM_SETTINGS_LEN_OFFSET, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @SPI_XCOMM_CMD_UPDATE_CONFIG, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = call i32 @put_unaligned_be16(i32 %21, i32* %23)
  %25 = load %struct.spi_xcomm*, %struct.spi_xcomm** %3, align 8
  %26 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = call i32 @put_unaligned_be16(i32 %27, i32* %29)
  %31 = load %struct.spi_xcomm*, %struct.spi_xcomm** %3, align 8
  %32 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @i2c_master_send(i32 %33, i32* %34, i32 5)
  ret i32 %35
}

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
