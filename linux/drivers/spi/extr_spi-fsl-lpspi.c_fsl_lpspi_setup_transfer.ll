; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32, i64, i32, i32, i32 }
%struct.spi_transfer = type { i32, i64, i64 }
%struct.fsl_lpspi_data = type { i64, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@fsl_lpspi_buf_rx_u8 = common dso_local global i32 0, align 4
@fsl_lpspi_buf_tx_u8 = common dso_local global i32 0, align 4
@fsl_lpspi_buf_rx_u16 = common dso_local global i32 0, align 4
@fsl_lpspi_buf_tx_u16 = common dso_local global i32 0, align 4
@fsl_lpspi_buf_rx_u32 = common dso_local global i32 0, align 4
@fsl_lpspi_buf_tx_u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @fsl_lpspi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_setup_transfer(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.fsl_lpspi_data*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.fsl_lpspi_data* @spi_controller_get_devdata(i32 %11)
  store %struct.fsl_lpspi_data* %12, %struct.fsl_lpspi_data** %8, align 8
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %14 = icmp eq %struct.spi_transfer* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %137

18:                                               ; preds = %3
  %19 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %23 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %29 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %35 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %41 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %44 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %18
  %49 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %53 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %18
  %56 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %57 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %66 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %70 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sle i32 %72, 8
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i32, i32* @fsl_lpspi_buf_rx_u8, align 4
  %76 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %77 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @fsl_lpspi_buf_tx_u8, align 4
  %79 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %80 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %102

81:                                               ; preds = %68
  %82 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %83 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %85, 16
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i32, i32* @fsl_lpspi_buf_rx_u16, align 4
  %89 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %90 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @fsl_lpspi_buf_tx_u16, align 4
  %92 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %93 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %101

94:                                               ; preds = %81
  %95 = load i32, i32* @fsl_lpspi_buf_rx_u32, align 4
  %96 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %97 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @fsl_lpspi_buf_tx_u32, align 4
  %99 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %100 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %101, %74
  %103 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %104 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %107 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %112 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %115 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %122

116:                                              ; preds = %102
  %117 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %118 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %121 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %116, %110
  %123 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %124 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %125 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %126 = call i64 @fsl_lpspi_can_dma(%struct.spi_controller* %123, %struct.spi_device* %124, %struct.spi_transfer* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %130 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  br label %134

131:                                              ; preds = %122
  %132 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %133 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %132, i32 0, i32 2
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %128
  %135 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %8, align 8
  %136 = call i32 @fsl_lpspi_config(%struct.fsl_lpspi_data* %135)
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %15
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.fsl_lpspi_data* @spi_controller_get_devdata(i32) #1

declare dso_local i64 @fsl_lpspi_can_dma(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @fsl_lpspi_config(%struct.fsl_lpspi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
