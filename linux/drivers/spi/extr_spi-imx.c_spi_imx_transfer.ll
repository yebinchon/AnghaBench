; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.spi_imx_data = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.spi_imx_data*)* }

@MXC_CSPIRXDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_imx_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_imx_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.spi_imx_data* @spi_master_get_devdata(i32 %9)
  store %struct.spi_imx_data* %10, %struct.spi_imx_data** %6, align 8
  br label %11

11:                                               ; preds = %20, %2
  %12 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %13 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (%struct.spi_imx_data*)*, i64 (%struct.spi_imx_data*)** %15, align 8
  %17 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %18 = call i64 %16(%struct.spi_imx_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %22 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MXC_CSPIRXDATA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %29 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %35 = call i32 @spi_imx_pio_transfer_slave(%struct.spi_device* %33, %struct.spi_transfer* %34)
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %27
  %37 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %38 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %44 = call i32 @spi_imx_dma_transfer(%struct.spi_imx_data* %42, %struct.spi_transfer* %43)
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %36
  %46 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %48 = call i32 @spi_imx_pio_transfer(%struct.spi_device* %46, %struct.spi_transfer* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %41, %32
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spi_imx_pio_transfer_slave(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @spi_imx_dma_transfer(%struct.spi_imx_data*, %struct.spi_transfer*) #1

declare dso_local i32 @spi_imx_pio_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
