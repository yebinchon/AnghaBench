; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.spi_controller* }
%struct.spi_controller = type { i32 }
%struct.zynq_qspi = type { i32 }

@ZYNQ_QSPI_CONFIG_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_SSCTRL_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_SS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @zynq_qspi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_qspi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.zynq_qspi*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  %10 = load %struct.spi_controller*, %struct.spi_controller** %9, align 8
  store %struct.spi_controller* %10, %struct.spi_controller** %5, align 8
  %11 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %12 = call %struct.zynq_qspi* @spi_controller_get_devdata(%struct.spi_controller* %11)
  store %struct.zynq_qspi* %12, %struct.zynq_qspi** %6, align 8
  %13 = load %struct.zynq_qspi*, %struct.zynq_qspi** %6, align 8
  %14 = load i32, i32* @ZYNQ_QSPI_CONFIG_OFFSET, align 4
  %15 = call i32 @zynq_qspi_read(%struct.zynq_qspi* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %2
  %19 = load i32, i32* @ZYNQ_QSPI_CONFIG_SSCTRL_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @BIT(i32 %25)
  %27 = xor i32 %26, -1
  %28 = load i32, i32* @ZYNQ_QSPI_SS_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @ZYNQ_QSPI_CONFIG_SSCTRL_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @ZYNQ_QSPI_CONFIG_SSCTRL_MASK, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %18
  %39 = load %struct.zynq_qspi*, %struct.zynq_qspi** %6, align 8
  %40 = load i32, i32* @ZYNQ_QSPI_CONFIG_OFFSET, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local %struct.zynq_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @zynq_qspi_read(%struct.zynq_qspi*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @zynq_qspi_write(%struct.zynq_qspi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
