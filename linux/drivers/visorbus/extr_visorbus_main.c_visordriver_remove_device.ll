; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visordriver_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visordriver_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.visor_device = type { i32, i32, i32 }
%struct.visor_driver = type { i32 (%struct.visor_device.0*)* }
%struct.visor_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @visordriver_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visordriver_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.visor_device*, align 8
  %4 = alloca %struct.visor_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.visor_device* @to_visor_device(%struct.device* %5)
  store %struct.visor_device* %6, %struct.visor_device** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.visor_driver* @to_visor_driver(i32 %9)
  store %struct.visor_driver* %10, %struct.visor_driver** %4, align 8
  %11 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %12 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %15 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.visor_driver*, %struct.visor_driver** %4, align 8
  %17 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.visor_device.0*)*, i32 (%struct.visor_device.0*)** %17, align 8
  %19 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %20 = bitcast %struct.visor_device* %19 to %struct.visor_device.0*
  %21 = call i32 %18(%struct.visor_device.0* %20)
  %22 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %23 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %22, i32 0, i32 2
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %26 = call i32 @dev_stop_periodic_work(%struct.visor_device* %25)
  %27 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %28 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %27, i32 0, i32 1
  %29 = call i32 @put_device(i32* %28)
  ret i32 0
}

declare dso_local %struct.visor_device* @to_visor_device(%struct.device*) #1

declare dso_local %struct.visor_driver* @to_visor_driver(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_stop_periodic_work(%struct.visor_device*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
