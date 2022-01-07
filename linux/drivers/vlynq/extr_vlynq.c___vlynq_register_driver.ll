; ModuleID = '/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c___vlynq_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vlynq/extr_vlynq.c___vlynq_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlynq_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.module = type { i32 }

@vlynq_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vlynq_register_driver(%struct.vlynq_driver* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.vlynq_driver*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.vlynq_driver* %0, %struct.vlynq_driver** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %5 = load %struct.vlynq_driver*, %struct.vlynq_driver** %3, align 8
  %6 = getelementptr inbounds %struct.vlynq_driver, %struct.vlynq_driver* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.vlynq_driver*, %struct.vlynq_driver** %3, align 8
  %9 = getelementptr inbounds %struct.vlynq_driver, %struct.vlynq_driver* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.vlynq_driver*, %struct.vlynq_driver** %3, align 8
  %12 = getelementptr inbounds %struct.vlynq_driver, %struct.vlynq_driver* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* @vlynq_bus_type, i32** %13, align 8
  %14 = load %struct.vlynq_driver*, %struct.vlynq_driver** %3, align 8
  %15 = getelementptr inbounds %struct.vlynq_driver, %struct.vlynq_driver* %14, i32 0, i32 0
  %16 = call i32 @driver_register(%struct.TYPE_2__* %15)
  ret i32 %16
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
