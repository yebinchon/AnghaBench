; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device_id = type { i32 }
%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.spi_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spi_driver*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.spi_driver* @to_spi_driver(i32 %7)
  store %struct.spi_driver* %8, %struct.spi_driver** %3, align 8
  %9 = load %struct.spi_driver*, %struct.spi_driver** %3, align 8
  %10 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %13 = call %struct.spi_device_id* @spi_match_id(i32 %11, %struct.spi_device* %12)
  ret %struct.spi_device_id* %13
}

declare dso_local %struct.spi_driver* @to_spi_driver(i32) #1

declare dso_local %struct.spi_device_id* @spi_match_id(i32, %struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
