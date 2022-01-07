; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visordriver_probe_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visordriver_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.visor_driver = type { i32 (%struct.visor_device*)* }
%struct.visor_device = type opaque
%struct.visor_device.0 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @visordriver_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visordriver_probe_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.visor_driver*, align 8
  %6 = alloca %struct.visor_device.0*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.visor_driver* @to_visor_driver(i32 %9)
  store %struct.visor_driver* %10, %struct.visor_driver** %5, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.visor_device.0* @to_visor_device(%struct.device* %11)
  store %struct.visor_device.0* %12, %struct.visor_device.0** %6, align 8
  %13 = load %struct.visor_device.0*, %struct.visor_device.0** %6, align 8
  %14 = getelementptr inbounds %struct.visor_device.0, %struct.visor_device.0* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.visor_device.0*, %struct.visor_device.0** %6, align 8
  %17 = getelementptr inbounds %struct.visor_device.0, %struct.visor_device.0* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.visor_driver*, %struct.visor_driver** %5, align 8
  %19 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.visor_device*)*, i32 (%struct.visor_device*)** %19, align 8
  %21 = load %struct.visor_device.0*, %struct.visor_device.0** %6, align 8
  %22 = bitcast %struct.visor_device.0* %21 to %struct.visor_device*
  %23 = call i32 %20(%struct.visor_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.visor_device.0*, %struct.visor_device.0** %6, align 8
  %28 = getelementptr inbounds %struct.visor_device.0, %struct.visor_device.0* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %1
  %32 = load %struct.visor_device.0*, %struct.visor_device.0** %6, align 8
  %33 = getelementptr inbounds %struct.visor_device.0, %struct.visor_device.0* %32, i32 0, i32 2
  %34 = call i32 @get_device(i32* %33)
  %35 = load %struct.visor_device.0*, %struct.visor_device.0** %6, align 8
  %36 = call i32 @publish_vbus_dev_info(%struct.visor_device.0* %35)
  %37 = load %struct.visor_device.0*, %struct.visor_device.0** %6, align 8
  %38 = getelementptr inbounds %struct.visor_device.0, %struct.visor_device.0* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.visor_driver* @to_visor_driver(i32) #1

declare dso_local %struct.visor_device.0* @to_visor_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @publish_vbus_dev_info(%struct.visor_device.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
