; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_mx21_prepare_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_mx21_prepare_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i32, i64, i32 }
%struct.spi_device = type { i32, i32, i32 }
%struct.spi_transfer = type { i32 }

@MX21_CSPICTRL_ENABLE = common dso_local global i32 0, align 4
@MX21_CSPICTRL_MASTER = common dso_local global i32 0, align 4
@MX21_CSPICTRL_DR_SHIFT = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@MX21_CSPICTRL_PHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@MX21_CSPICTRL_POL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@MX21_CSPICTRL_SSPOL = common dso_local global i32 0, align 4
@MX21_CSPICTRL_CS_SHIFT = common dso_local global i32 0, align 4
@MXC_CSPICTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_imx_data*, %struct.spi_device*, %struct.spi_transfer*)* @mx21_prepare_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx21_prepare_transfer(%struct.spi_imx_data* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_imx_data*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %10 = load i32, i32* @MX21_CSPICTRL_ENABLE, align 4
  %11 = load i32, i32* @MX21_CSPICTRL_MASTER, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %14 = call i64 @is_imx27_cspi(%struct.spi_imx_data* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 16, i32 18
  store i32 %17, i32* %8, align 4
  %18 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %19 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @spi_imx_clkdiv_1(i32 %20, i32 %23, i32 %24, i32* %9)
  %26 = load i32, i32* @MX21_CSPICTRL_DR_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %32 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %34 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SPI_CPHA, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load i32, i32* @MX21_CSPICTRL_PHA, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %3
  %50 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %51 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SPI_CPOL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @MX21_CSPICTRL_POL, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SPI_CS_HIGH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @MX21_CSPICTRL_SSPOL, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpio_is_valid(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MX21_CSPICTRL_CS_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %77, %71
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.spi_imx_data*, %struct.spi_imx_data** %4, align 8
  %88 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MXC_CSPICTRL, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  ret i32 0
}

declare dso_local i64 @is_imx27_cspi(%struct.spi_imx_data*) #1

declare dso_local i32 @spi_imx_clkdiv_1(i32, i32, i32, i32*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
