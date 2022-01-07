; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_setupxfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-imx.c_spi_imx_setupxfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32 }
%struct.spi_imx_data = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.spi_imx_data*, %struct.spi_device*, %struct.spi_transfer*)*, i64 }
%struct.TYPE_3__ = type { i32 }

@spi_imx_buf_rx_swap = common dso_local global i32 0, align 4
@spi_imx_buf_tx_swap = common dso_local global i32 0, align 4
@spi_imx_buf_rx_u8 = common dso_local global i32 0, align 4
@spi_imx_buf_tx_u8 = common dso_local global i32 0, align 4
@spi_imx_buf_rx_u16 = common dso_local global i32 0, align 4
@spi_imx_buf_tx_u16 = common dso_local global i32 0, align 4
@spi_imx_buf_rx_u32 = common dso_local global i32 0, align 4
@spi_imx_buf_tx_u32 = common dso_local global i32 0, align 4
@mx53_ecspi_rx_slave = common dso_local global i32 0, align 4
@mx53_ecspi_tx_slave = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_imx_setupxfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_setupxfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
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
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %12 = icmp ne %struct.spi_transfer* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

14:                                               ; preds = %2
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %19 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %21 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %14
  %27 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %28 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %26
  %32 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %33 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %38 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %43 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %46, label %55

46:                                               ; preds = %41, %36, %31
  %47 = load i32, i32* @spi_imx_buf_rx_swap, align 4
  %48 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %49 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @spi_imx_buf_tx_swap, align 4
  %51 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %52 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %54 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %90

55:                                               ; preds = %41, %26, %14
  %56 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %57 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %58, 8
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* @spi_imx_buf_rx_u8, align 4
  %62 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %63 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @spi_imx_buf_tx_u8, align 4
  %65 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %66 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  br label %87

67:                                               ; preds = %55
  %68 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %69 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sle i32 %70, 16
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @spi_imx_buf_rx_u16, align 4
  %74 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %75 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @spi_imx_buf_tx_u16, align 4
  %77 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %78 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  br label %86

79:                                               ; preds = %67
  %80 = load i32, i32* @spi_imx_buf_rx_u32, align 4
  %81 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %82 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @spi_imx_buf_tx_u32, align 4
  %84 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %85 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %72
  br label %87

87:                                               ; preds = %86, %60
  %88 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %89 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %46
  %91 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %92 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %96 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %97 = call i64 @spi_imx_can_dma(i32 %94, %struct.spi_device* %95, %struct.spi_transfer* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %101 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  br label %105

102:                                              ; preds = %90
  %103 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %104 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %103, i32 0, i32 2
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %107 = call i64 @is_imx53_ecspi(%struct.spi_imx_data* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %111 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load i32, i32* @mx53_ecspi_rx_slave, align 4
  %116 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %117 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @mx53_ecspi_tx_slave, align 4
  %119 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %120 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %122 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %125 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %114, %109, %105
  %127 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %128 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32 (%struct.spi_imx_data*, %struct.spi_device*, %struct.spi_transfer*)*, i32 (%struct.spi_imx_data*, %struct.spi_device*, %struct.spi_transfer*)** %130, align 8
  %132 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %133 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %134 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %135 = call i32 %131(%struct.spi_imx_data* %132, %struct.spi_device* %133, %struct.spi_transfer* %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %126, %13
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.spi_imx_data* @spi_master_get_devdata(i32) #1

declare dso_local i64 @spi_imx_can_dma(i32, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i64 @is_imx53_ecspi(%struct.spi_imx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
