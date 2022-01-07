; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_setup_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_setup_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.spi_controller* }
%struct.spi_controller = type { i64 }
%struct.zynq_qspi = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ZYNQ_QSPI_ENABLE_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_ENABLE_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @zynq_qspi_setup_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_qspi_setup_op(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.zynq_qspi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  store %struct.spi_controller* %8, %struct.spi_controller** %4, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %10 = call %struct.zynq_qspi* @spi_controller_get_devdata(%struct.spi_controller* %9)
  store %struct.zynq_qspi* %10, %struct.zynq_qspi** %5, align 8
  %11 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %12 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %20 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_enable(i32 %21)
  %23 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %24 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_enable(i32 %25)
  %27 = load %struct.zynq_qspi*, %struct.zynq_qspi** %5, align 8
  %28 = load i32, i32* @ZYNQ_QSPI_ENABLE_OFFSET, align 4
  %29 = load i32, i32* @ZYNQ_QSPI_ENABLE_ENABLE_MASK, align 4
  %30 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %27, i32 %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %18, %15
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.zynq_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @zynq_qspi_write(%struct.zynq_qspi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
