; ModuleID = '/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3-vuart.c_ps3_vuart_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ps3/extr_ps3-vuart.c_ps3_vuart_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.ps3_system_bus_device = type { i32 }
%struct.ps3_vuart_port_driver = type { i32 (%struct.ps3_system_bus_device.0*)* }
%struct.ps3_system_bus_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @ps3_vuart_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3_vuart_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.ps3_system_bus_device*, align 8
  %4 = alloca %struct.ps3_vuart_port_driver*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = call %struct.ps3_system_bus_device* @ps3_vuart_work_to_system_bus_dev(%struct.work_struct* %5)
  store %struct.ps3_system_bus_device* %6, %struct.ps3_system_bus_device** %3, align 8
  %7 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %8 = call %struct.ps3_vuart_port_driver* @ps3_system_bus_dev_to_vuart_drv(%struct.ps3_system_bus_device* %7)
  store %struct.ps3_vuart_port_driver* %8, %struct.ps3_vuart_port_driver** %4, align 8
  %9 = load %struct.ps3_vuart_port_driver*, %struct.ps3_vuart_port_driver** %4, align 8
  %10 = icmp ne %struct.ps3_vuart_port_driver* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.ps3_vuart_port_driver*, %struct.ps3_vuart_port_driver** %4, align 8
  %15 = getelementptr inbounds %struct.ps3_vuart_port_driver, %struct.ps3_vuart_port_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.ps3_system_bus_device.0*)*, i32 (%struct.ps3_system_bus_device.0*)** %15, align 8
  %17 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %3, align 8
  %18 = bitcast %struct.ps3_system_bus_device* %17 to %struct.ps3_system_bus_device.0*
  %19 = call i32 %16(%struct.ps3_system_bus_device.0* %18)
  ret void
}

declare dso_local %struct.ps3_system_bus_device* @ps3_vuart_work_to_system_bus_dev(%struct.work_struct*) #1

declare dso_local %struct.ps3_vuart_port_driver* @ps3_system_bus_dev_to_vuart_drv(%struct.ps3_system_bus_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
