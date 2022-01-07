; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_driver_register_with_owner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_driver_register_with_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.module = type { i32 }

@spi_mem_probe = common dso_local global i32 0, align 4
@spi_mem_remove = common dso_local global i32 0, align 4
@spi_mem_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_mem_driver_register_with_owner(%struct.spi_mem_driver* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.spi_mem_driver*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.spi_mem_driver* %0, %struct.spi_mem_driver** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %5 = load i32, i32* @spi_mem_probe, align 4
  %6 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %3, align 8
  %7 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @spi_mem_remove, align 4
  %10 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %3, align 8
  %11 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @spi_mem_shutdown, align 4
  %14 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %3, align 8
  %15 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.module*, %struct.module** %4, align 8
  %18 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %3, align 8
  %19 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %18, i32 0, i32 0
  %20 = call i32 @__spi_register_driver(%struct.module* %17, %struct.TYPE_2__* %19)
  ret i32 %20
}

declare dso_local i32 @__spi_register_driver(%struct.module*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
