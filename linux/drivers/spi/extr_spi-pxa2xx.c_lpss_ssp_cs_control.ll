; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_lpss_ssp_cs_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx.c_lpss_ssp_cs_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.driver_data = type { i32 }
%struct.lpss_config = type { i32 }

@LPSS_CS_CONTROL_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @lpss_ssp_cs_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpss_ssp_cs_control(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.driver_data*, align 8
  %6 = alloca %struct.lpss_config*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.driver_data* @spi_controller_get_devdata(i32 %10)
  store %struct.driver_data* %11, %struct.driver_data** %5, align 8
  %12 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %13 = call %struct.lpss_config* @lpss_get_config(%struct.driver_data* %12)
  store %struct.lpss_config* %13, %struct.lpss_config** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = load %struct.lpss_config*, %struct.lpss_config** %6, align 8
  %19 = call i32 @lpss_ssp_select_cs(%struct.spi_device* %17, %struct.lpss_config* %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %22 = load %struct.lpss_config*, %struct.lpss_config** %6, align 8
  %23 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__lpss_ssp_read_priv(%struct.driver_data* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32, i32* @LPSS_CS_CONTROL_CS_HIGH, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %37

33:                                               ; preds = %20
  %34 = load i32, i32* @LPSS_CS_CONTROL_CS_HIGH, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %39 = load %struct.lpss_config*, %struct.lpss_config** %6, align 8
  %40 = getelementptr inbounds %struct.lpss_config, %struct.lpss_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @__lpss_ssp_write_priv(%struct.driver_data* %38, i32 %41, i32 %42)
  ret void
}

declare dso_local %struct.driver_data* @spi_controller_get_devdata(i32) #1

declare dso_local %struct.lpss_config* @lpss_get_config(%struct.driver_data*) #1

declare dso_local i32 @lpss_ssp_select_cs(%struct.spi_device*, %struct.lpss_config*) #1

declare dso_local i32 @__lpss_ssp_read_priv(%struct.driver_data*, i32) #1

declare dso_local i32 @__lpss_ssp_write_priv(%struct.driver_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
