; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_setup_mmap_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_setup_mmap_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ti_qspi = type { i32 }

@QSPI_SETUP_RD_QUAD = common dso_local global i32 0, align 4
@QSPI_SETUP_RD_DUAL = common dso_local global i32 0, align 4
@QSPI_SETUP_RD_NORMAL = common dso_local global i32 0, align 4
@QSPI_SETUP_ADDR_SHIFT = common dso_local global i32 0, align 4
@QSPI_SETUP_DUMMY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32, i32, i32, i32)* @ti_qspi_setup_mmap_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_qspi_setup_mmap_read(%struct.spi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ti_qspi*, align 8
  %12 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ti_qspi* @spi_master_get_devdata(i32 %15)
  store %struct.ti_qspi* %16, %struct.ti_qspi** %11, align 8
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 129, label %23
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @QSPI_SETUP_RD_QUAD, align 4
  %21 = load i32, i32* %12, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %12, align 4
  br label %31

23:                                               ; preds = %5
  %24 = load i32, i32* @QSPI_SETUP_RD_DUAL, align 4
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  br label %31

27:                                               ; preds = %5
  %28 = load i32, i32* @QSPI_SETUP_RD_NORMAL, align 4
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %27, %23, %19
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @QSPI_SETUP_ADDR_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @QSPI_SETUP_DUMMY_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load %struct.ti_qspi*, %struct.ti_qspi** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @QSPI_SPI_SETUP_REG(i32 %46)
  %48 = call i32 @ti_qspi_write(%struct.ti_qspi* %42, i32 %43, i32 %47)
  ret void
}

declare dso_local %struct.ti_qspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @ti_qspi_write(%struct.ti_qspi*, i32, i32) #1

declare dso_local i32 @QSPI_SPI_SETUP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
