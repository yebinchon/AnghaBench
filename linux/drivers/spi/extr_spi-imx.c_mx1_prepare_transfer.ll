; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_mx1_prepare_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_mx1_prepare_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i32, i64, i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }

@MX1_CSPICTRL_ENABLE = common dso_local global i32 0, align 4
@MX1_CSPICTRL_MASTER = common dso_local global i32 0, align 4
@MX1_CSPICTRL_DR_SHIFT = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@MX1_CSPICTRL_PHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@MX1_CSPICTRL_POL = common dso_local global i32 0, align 4
@MXC_CSPICTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_imx_data*, %struct.spi_device*, %struct.spi_transfer*)* @mx1_prepare_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx1_prepare_transfer(%struct.spi_imx_data* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_imx_data*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load i32, i32* @MX1_CSPICTRL_ENABLE, align 4
  %10 = load i32, i32* @MX1_CSPICTRL_MASTER, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %13 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @spi_imx_clkdiv_2(i32 %14, i32 %17, i32* %8)
  %19 = load i32, i32* @MX1_CSPICTRL_DR_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %25 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %27 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SPI_CPHA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32, i32* @MX1_CSPICTRL_PHA, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %3
  %43 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SPI_CPOL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @MX1_CSPICTRL_POL, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %56 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MXC_CSPICTRL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  ret i32 0
}

declare dso_local i32 @spi_imx_clkdiv_2(i32, i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
