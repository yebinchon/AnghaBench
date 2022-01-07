; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_pio_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_pio_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.spi_imx_data = type { i32, %struct.TYPE_2__*, i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*, i32)* }

@MXC_INT_TE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"I/O Error in PIO\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_imx_pio_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_pio_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_imx_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.spi_imx_data* @spi_master_get_devdata(i32 %11)
  store %struct.spi_imx_data* %12, %struct.spi_imx_data** %6, align 8
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %17 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %22 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %27 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %29 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %31 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %33 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %32, i32 0, i32 2
  %34 = call i32 @reinit_completion(i32* %33)
  %35 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %36 = call i32 @spi_imx_push(%struct.spi_imx_data* %35)
  %37 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %38 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data*, i32)** %40, align 8
  %42 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %43 = load i32, i32* @MXC_INT_TE, align 4
  %44 = call i32 %41(%struct.spi_imx_data* %42, i32 %43)
  %45 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %46 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @spi_imx_calculate_timeout(%struct.spi_imx_data* %45, i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %51 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %50, i32 0, i32 2
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @wait_for_completion_timeout(i32* %51, i64 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %2
  %57 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %58 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %61 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %63, align 8
  %65 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %66 = call i32 %64(%struct.spi_imx_data* %65)
  %67 = load i32, i32* @ETIMEDOUT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %73

69:                                               ; preds = %2
  %70 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %56
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spi_imx_push(%struct.spi_imx_data*) #1

declare dso_local i64 @spi_imx_calculate_timeout(%struct.spi_imx_data*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
