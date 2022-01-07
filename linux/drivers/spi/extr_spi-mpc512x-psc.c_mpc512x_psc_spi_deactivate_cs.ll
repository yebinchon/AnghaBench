; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc512x-psc.c_mpc512x_psc_spi_deactivate_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc512x-psc.c_mpc512x_psc_spi_deactivate_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.mpc512x_psc_spi = type { i32 (%struct.spi_device*, i32)* }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @mpc512x_psc_spi_deactivate_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc512x_psc_spi_deactivate_cs(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.mpc512x_psc_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.mpc512x_psc_spi* @spi_master_get_devdata(i32 %6)
  store %struct.mpc512x_psc_spi* %7, %struct.mpc512x_psc_spi** %3, align 8
  %8 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %3, align 8
  %9 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %8, i32 0, i32 0
  %10 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.spi_device*, i32)* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @gpio_is_valid(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %3, align 8
  %20 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %19, i32 0, i32 0
  %21 = load i32 (%struct.spi_device*, i32)*, i32 (%struct.spi_device*, i32)** %20, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SPI_CS_HIGH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 1
  %31 = call i32 %21(%struct.spi_device* %22, i32 %30)
  br label %32

32:                                               ; preds = %18, %12, %1
  ret void
}

declare dso_local %struct.mpc512x_psc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
