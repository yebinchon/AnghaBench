; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_dev_periodic_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_dev_periodic_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.visor_driver = type { i32 (%struct.visor_device.0*)* }
%struct.visor_device.0 = type opaque

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLLJIFFIES_NORMALCHANNEL = common dso_local global i64 0, align 8
@dev = common dso_local global %struct.visor_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dev_periodic_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_periodic_work(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.visor_device*, align 8
  %4 = alloca %struct.visor_driver*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %6 = ptrtoint %struct.visor_device* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.visor_device* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.visor_device* %9, %struct.visor_device** %3, align 8
  %10 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %11 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.visor_driver* @to_visor_driver(i32 %13)
  store %struct.visor_driver* %14, %struct.visor_driver** %4, align 8
  %15 = load %struct.visor_driver*, %struct.visor_driver** %4, align 8
  %16 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %15, i32 0, i32 0
  %17 = load i32 (%struct.visor_device.0*)*, i32 (%struct.visor_device.0*)** %16, align 8
  %18 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %19 = bitcast %struct.visor_device* %18 to %struct.visor_device.0*
  %20 = call i32 %17(%struct.visor_device.0* %19)
  %21 = load %struct.visor_device*, %struct.visor_device** %3, align 8
  %22 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %21, i32 0, i32 0
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* @POLLJIFFIES_NORMALCHANNEL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @mod_timer(i32* %22, i64 %25)
  ret void
}

declare dso_local %struct.visor_device* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.visor_driver* @to_visor_driver(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
