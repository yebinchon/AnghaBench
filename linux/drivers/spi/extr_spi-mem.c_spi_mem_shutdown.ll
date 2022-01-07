; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_mem_driver = type { i32 (%struct.spi_mem*)* }
%struct.spi_mem = type opaque
%struct.spi_mem.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @spi_mem_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_mem_shutdown(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spi_mem_driver*, align 8
  %4 = alloca %struct.spi_mem.0*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.spi_mem_driver* @to_spi_mem_drv(i32 %8)
  store %struct.spi_mem_driver* %9, %struct.spi_mem_driver** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = call %struct.spi_mem.0* @spi_get_drvdata(%struct.spi_device* %10)
  store %struct.spi_mem.0* %11, %struct.spi_mem.0** %4, align 8
  %12 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %3, align 8
  %13 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %12, i32 0, i32 0
  %14 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %13, align 8
  %15 = icmp ne i32 (%struct.spi_mem*)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %3, align 8
  %18 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %17, i32 0, i32 0
  %19 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %18, align 8
  %20 = load %struct.spi_mem.0*, %struct.spi_mem.0** %4, align 8
  %21 = bitcast %struct.spi_mem.0* %20 to %struct.spi_mem*
  %22 = call i32 %19(%struct.spi_mem* %21)
  br label %23

23:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.spi_mem_driver* @to_spi_mem_drv(i32) #1

declare dso_local %struct.spi_mem.0* @spi_get_drvdata(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
