; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_pio_transfer_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_pio_transfer_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.spi_imx_data = type { i32, i32, %struct.TYPE_2__*, i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*, i32)* }

@MX53_MAX_TRANSFER_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Transaction too big, max size is %d bytes\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@MXC_INT_TE = common dso_local global i32 0, align 4
@MXC_INT_RDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"interrupted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_imx_pio_transfer_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_pio_transfer_slave(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.spi_imx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.spi_imx_data* @spi_master_get_devdata(i32 %10)
  store %struct.spi_imx_data* %11, %struct.spi_imx_data** %6, align 8
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %16 = call i64 @is_imx53_ecspi(%struct.spi_imx_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MX53_MAX_TRANSFER_BYTES, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* @MX53_MAX_TRANSFER_BYTES, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %100

31:                                               ; preds = %18, %2
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %36 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %41 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %46 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %48 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %50 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %52 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %51, i32 0, i32 3
  %53 = call i32 @reinit_completion(i32* %52)
  %54 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %55 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %57 = call i32 @spi_imx_push(%struct.spi_imx_data* %56)
  %58 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %59 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data*, i32)** %61, align 8
  %63 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %64 = load i32, i32* @MXC_INT_TE, align 4
  %65 = load i32, i32* @MXC_INT_RDR, align 4
  %66 = or i32 %64, %65
  %67 = call i32 %62(%struct.spi_imx_data* %63, i32 %66)
  %68 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %69 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %68, i32 0, i32 3
  %70 = call i64 @wait_for_completion_interruptible(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %31
  %73 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %74 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %31
  %78 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = call i32 @dev_dbg(i32* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINTR, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %85 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %87, align 8
  %89 = icmp ne i32 (%struct.spi_imx_data*)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %92 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %94, align 8
  %96 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %97 = call i32 %95(%struct.spi_imx_data* %96)
  br label %98

98:                                               ; preds = %90, %83
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %24
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(i32) #1

declare dso_local i64 @is_imx53_ecspi(%struct.spi_imx_data*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spi_imx_push(%struct.spi_imx_data*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
