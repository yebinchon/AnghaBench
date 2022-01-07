; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_mspi_apply_cpu_mode_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_mspi_apply_cpu_mode_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mpc8xxx_cs = type { i32, i32, i64, i64 }
%struct.spi_device = type { i32 }
%struct.mpc8xxx_spi = type { i32, i32, i64, i64, i32 (i64*, i64*, i32, i32)* }

@mpc8xxx_spi_rx_buf_u8 = common dso_local global i32 0, align 4
@mpc8xxx_spi_tx_buf_u8 = common dso_local global i32 0, align 4
@mpc8xxx_spi_rx_buf_u16 = common dso_local global i32 0, align 4
@mpc8xxx_spi_tx_buf_u16 = common dso_local global i32 0, align 4
@mpc8xxx_spi_rx_buf_u32 = common dso_local global i32 0, align 4
@mpc8xxx_spi_tx_buf_u32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mpc8xxx_cs*, %struct.spi_device*, %struct.mpc8xxx_spi*, i32)* @mspi_apply_cpu_mode_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspi_apply_cpu_mode_quirks(%struct.spi_mpc8xxx_cs* %0, %struct.spi_device* %1, %struct.mpc8xxx_spi* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_mpc8xxx_cs*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.mpc8xxx_spi*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_mpc8xxx_cs* %0, %struct.spi_mpc8xxx_cs** %6, align 8
  store %struct.spi_device* %1, %struct.spi_device** %7, align 8
  store %struct.mpc8xxx_spi* %2, %struct.mpc8xxx_spi** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %11 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %13 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %14, 8
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* @mpc8xxx_spi_rx_buf_u8, align 4
  %18 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %19 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @mpc8xxx_spi_tx_buf_u8, align 4
  %21 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %22 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %48

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %24, 16
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* @mpc8xxx_spi_rx_buf_u16, align 4
  %28 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %29 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @mpc8xxx_spi_tx_buf_u16, align 4
  %31 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %32 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %47

33:                                               ; preds = %23
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %34, 32
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @mpc8xxx_spi_rx_buf_u32, align 4
  %38 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %39 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @mpc8xxx_spi_tx_buf_u32, align 4
  %41 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %42 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %93

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %26
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %50 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %49, i32 0, i32 4
  %51 = load i32 (i64*, i64*, i32, i32)*, i32 (i64*, i64*, i32, i32)** %50, align 8
  %52 = icmp ne i32 (i64*, i64*, i32, i32)* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %55 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %54, i32 0, i32 4
  %56 = load i32 (i64*, i64*, i32, i32)*, i32 (i64*, i64*, i32, i32)** %55, align 8
  %57 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %58 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %57, i32 0, i32 3
  %59 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %60 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %59, i32 0, i32 2
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SPI_LSB_FIRST, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 %56(i64* %58, i64* %60, i32 %61, i32 %69)
  br label %71

71:                                               ; preds = %53, %48
  %72 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %73 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %76 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %78 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %81 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %83 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %86 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.spi_mpc8xxx_cs*, %struct.spi_mpc8xxx_cs** %6, align 8
  %88 = getelementptr inbounds %struct.spi_mpc8xxx_cs, %struct.spi_mpc8xxx_cs* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %91 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %71, %43
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
