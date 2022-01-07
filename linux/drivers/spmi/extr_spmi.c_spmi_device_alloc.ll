; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_device = type { %struct.TYPE_2__, %struct.spmi_controller* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.spmi_controller = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@spmi_bus_type = common dso_local global i32 0, align 4
@spmi_dev_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spmi_device* @spmi_device_alloc(%struct.spmi_controller* %0) #0 {
  %2 = alloca %struct.spmi_device*, align 8
  %3 = alloca %struct.spmi_controller*, align 8
  %4 = alloca %struct.spmi_device*, align 8
  store %struct.spmi_controller* %0, %struct.spmi_controller** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.spmi_device* @kzalloc(i32 32, i32 %5)
  store %struct.spmi_device* %6, %struct.spmi_device** %4, align 8
  %7 = load %struct.spmi_device*, %struct.spmi_device** %4, align 8
  %8 = icmp ne %struct.spmi_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.spmi_device* null, %struct.spmi_device** %2, align 8
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %12 = load %struct.spmi_device*, %struct.spmi_device** %4, align 8
  %13 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %12, i32 0, i32 1
  store %struct.spmi_controller* %11, %struct.spmi_controller** %13, align 8
  %14 = load %struct.spmi_device*, %struct.spmi_device** %4, align 8
  %15 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %14, i32 0, i32 0
  %16 = call i32 @device_initialize(%struct.TYPE_2__* %15)
  %17 = load %struct.spmi_controller*, %struct.spmi_controller** %3, align 8
  %18 = getelementptr inbounds %struct.spmi_controller, %struct.spmi_controller* %17, i32 0, i32 0
  %19 = load %struct.spmi_device*, %struct.spmi_device** %4, align 8
  %20 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32* %18, i32** %21, align 8
  %22 = load %struct.spmi_device*, %struct.spmi_device** %4, align 8
  %23 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* @spmi_bus_type, i32** %24, align 8
  %25 = load %struct.spmi_device*, %struct.spmi_device** %4, align 8
  %26 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* @spmi_dev_type, i32** %27, align 8
  %28 = load %struct.spmi_device*, %struct.spmi_device** %4, align 8
  store %struct.spmi_device* %28, %struct.spmi_device** %2, align 8
  br label %29

29:                                               ; preds = %10, %9
  %30 = load %struct.spmi_device*, %struct.spmi_device** %2, align 8
  ret %struct.spmi_device* %30
}

declare dso_local %struct.spmi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
