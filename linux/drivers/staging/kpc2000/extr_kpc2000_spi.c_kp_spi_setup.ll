; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_spi.c_kp_spi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/extr_kpc2000_spi.c_kp_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.kp_spi_controller_state*, i32, i64, i32 }
%struct.kp_spi_controller_state = type { i32, i32 }
%union.kp_spi_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i64 }
%struct.kp_spi = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KP_SPI_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @kp_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kp_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %union.kp_spi_config, align 8
  %5 = alloca %struct.kp_spi*, align 8
  %6 = alloca %struct.kp_spi_controller_state*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.kp_spi* @spi_master_get_devdata(i32 %9)
  store %struct.kp_spi* %10, %struct.kp_spi** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %12, align 8
  store %struct.kp_spi_controller_state* %13, %struct.kp_spi_controller_state** %6, align 8
  %14 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %6, align 8
  %15 = icmp ne %struct.kp_spi_controller_state* %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.kp_spi_controller_state* @kzalloc(i32 8, i32 %17)
  store %struct.kp_spi_controller_state* %18, %struct.kp_spi_controller_state** %6, align 8
  %19 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %6, align 8
  %20 = icmp ne %struct.kp_spi_controller_state* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %60

24:                                               ; preds = %16
  %25 = load %struct.kp_spi*, %struct.kp_spi** %5, align 8
  %26 = getelementptr inbounds %struct.kp_spi, %struct.kp_spi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %6, align 8
  %29 = getelementptr inbounds %struct.kp_spi_controller_state, %struct.kp_spi_controller_state* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %6, align 8
  %31 = getelementptr inbounds %struct.kp_spi_controller_state, %struct.kp_spi_controller_state* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 4
  %32 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %6, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  store %struct.kp_spi_controller_state* %32, %struct.kp_spi_controller_state** %34, align 8
  br label %35

35:                                               ; preds = %24, %1
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = bitcast %union.kp_spi_config* %4 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = bitcast %union.kp_spi_config* %4 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = bitcast %union.kp_spi_config* %4 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = bitcast %union.kp_spi_config* %4 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = bitcast %union.kp_spi_config* %4 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = load %struct.kp_spi_controller_state*, %struct.kp_spi_controller_state** %54, align 8
  %56 = load i32, i32* @KP_SPI_REG_CONFIG, align 4
  %57 = bitcast %union.kp_spi_config* %4 to i32*
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kp_spi_write_reg(%struct.kp_spi_controller_state* %55, i32 %56, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %35, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.kp_spi* @spi_master_get_devdata(i32) #1

declare dso_local %struct.kp_spi_controller_state* @kzalloc(i32, i32) #1

declare dso_local i32 @kp_spi_write_reg(%struct.kp_spi_controller_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
