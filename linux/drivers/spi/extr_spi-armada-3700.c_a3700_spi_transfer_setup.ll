; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_transfer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-armada-3700.c_a3700_spi_transfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32 }
%struct.a3700_spi = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @a3700_spi_transfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3700_spi_transfer_setup(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.a3700_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.a3700_spi* @spi_master_get_devdata(i32 %8)
  store %struct.a3700_spi* %9, %struct.a3700_spi** %5, align 8
  %10 = load %struct.a3700_spi*, %struct.a3700_spi** %5, align 8
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %12 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @a3700_spi_clock_set(%struct.a3700_spi* %10, i32 %13)
  %15 = load %struct.a3700_spi*, %struct.a3700_spi** %5, align 8
  %16 = call i32 @a3700_spi_bytelen_set(%struct.a3700_spi* %15, i32 4)
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.a3700_spi*, %struct.a3700_spi** %5, align 8
  %21 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.a3700_spi*, %struct.a3700_spi** %5, align 8
  %26 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.a3700_spi*, %struct.a3700_spi** %5, align 8
  %31 = getelementptr inbounds %struct.a3700_spi, %struct.a3700_spi* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local %struct.a3700_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @a3700_spi_clock_set(%struct.a3700_spi*, i32) #1

declare dso_local i32 @a3700_spi_bytelen_set(%struct.a3700_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
