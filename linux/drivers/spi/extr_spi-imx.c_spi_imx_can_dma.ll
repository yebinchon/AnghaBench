; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_can_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_can_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.spi_imx_data = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@use_dma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @spi_imx_can_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_can_dma(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.spi_imx_data*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %10 = call %struct.spi_imx_data* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.spi_imx_data* %10, %struct.spi_imx_data** %8, align 8
  %11 = load i32, i32* @use_dma, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %16 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %22 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %31 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load %struct.spi_imx_data*, %struct.spi_imx_data** %8, align 8
  %39 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %36, %25, %19, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
