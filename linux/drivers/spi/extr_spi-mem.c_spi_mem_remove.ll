; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_mem_driver = type { i32 (%struct.spi_mem*)* }
%struct.spi_mem = type opaque
%struct.spi_mem.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spi_mem_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_mem_remove(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_mem_driver*, align 8
  %5 = alloca %struct.spi_mem.0*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.spi_mem_driver* @to_spi_mem_drv(i32 %9)
  store %struct.spi_mem_driver* %10, %struct.spi_mem_driver** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = call %struct.spi_mem.0* @spi_get_drvdata(%struct.spi_device* %11)
  store %struct.spi_mem.0* %12, %struct.spi_mem.0** %5, align 8
  %13 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %4, align 8
  %14 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %14, align 8
  %16 = icmp ne i32 (%struct.spi_mem*)* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.spi_mem_driver*, %struct.spi_mem_driver** %4, align 8
  %19 = getelementptr inbounds %struct.spi_mem_driver, %struct.spi_mem_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.spi_mem*)*, i32 (%struct.spi_mem*)** %19, align 8
  %21 = load %struct.spi_mem.0*, %struct.spi_mem.0** %5, align 8
  %22 = bitcast %struct.spi_mem.0* %21 to %struct.spi_mem*
  %23 = call i32 %20(%struct.spi_mem* %22)
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.spi_mem_driver* @to_spi_mem_drv(i32) #1

declare dso_local %struct.spi_mem.0* @spi_get_drvdata(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
