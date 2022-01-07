; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xcomm.c_spi_xcomm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xcomm.c_spi_xcomm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.spi_xcomm = type { %struct.i2c_client* }
%struct.spi_master = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_MASTER_HALF_DUPLEX = common dso_local global i32 0, align 4
@spi_xcomm_transfer_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @spi_xcomm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_xcomm_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.spi_xcomm*, align 8
  %7 = alloca %struct.spi_master*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_5__* %10, i32 8)
  store %struct.spi_master* %11, %struct.spi_master** %7, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %13 = icmp ne %struct.spi_master* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %19 = call %struct.spi_xcomm* @spi_master_get_devdata(%struct.spi_master* %18)
  store %struct.spi_xcomm* %19, %struct.spi_xcomm** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.spi_xcomm*, %struct.spi_xcomm** %6, align 8
  %22 = getelementptr inbounds %struct.spi_xcomm, %struct.spi_xcomm* %21, i32 0, i32 0
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %24 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %23, i32 0, i32 0
  store i32 16, i32* %24, align 4
  %25 = load i32, i32* @SPI_CPHA, align 4
  %26 = load i32, i32* @SPI_CPOL, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SPI_3WIRE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %31 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = call i32 @SPI_BPW_MASK(i32 8)
  %33 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %34 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @SPI_MASTER_HALF_DUPLEX, align 4
  %36 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %37 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @spi_xcomm_transfer_one, align 4
  %39 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %40 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %46 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %50 = call i32 @i2c_set_clientdata(%struct.i2c_client* %48, %struct.spi_master* %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %54 = call i32 @devm_spi_register_master(%struct.TYPE_5__* %52, %struct.spi_master* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %17
  %58 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %59 = call i32 @spi_master_put(%struct.spi_master* %58)
  br label %60

60:                                               ; preds = %57, %17
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.spi_xcomm* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.spi_master*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_5__*, %struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
