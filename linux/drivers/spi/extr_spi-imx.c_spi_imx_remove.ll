; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.spi_imx_data = type { i32, i32, i64, i32 }

@MXC_CSPICTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_imx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_imx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.spi_master* %8, %struct.spi_master** %4, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.spi_imx_data* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.spi_imx_data* %10, %struct.spi_imx_data** %5, align 8
  %11 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %12 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %11, i32 0, i32 3
  %13 = call i32 @spi_bitbang_stop(i32* %12)
  %14 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %15 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_enable(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  %23 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %24 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_enable(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %31 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clk_disable(i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %22
  %36 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %37 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MXC_CSPICTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 0, i64 %40)
  %42 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %43 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_disable_unprepare(i32 %44)
  %46 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %47 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load %struct.spi_imx_data*, %struct.spi_imx_data** %5, align 8
  %51 = call i32 @spi_imx_sdma_exit(%struct.spi_imx_data* %50)
  %52 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %53 = call i32 @spi_master_put(%struct.spi_master* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %35, %29, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi_bitbang_stop(i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_imx_sdma_exit(%struct.spi_imx_data*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
