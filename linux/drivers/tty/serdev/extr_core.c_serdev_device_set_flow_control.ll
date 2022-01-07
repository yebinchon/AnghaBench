; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_set_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_set_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.serdev_controller* }
%struct.serdev_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.serdev_controller*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serdev_device_set_flow_control(%struct.serdev_device* %0, i32 %1) #0 {
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.serdev_controller*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %7 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %6, i32 0, i32 0
  %8 = load %struct.serdev_controller*, %struct.serdev_controller** %7, align 8
  store %struct.serdev_controller* %8, %struct.serdev_controller** %5, align 8
  %9 = load %struct.serdev_controller*, %struct.serdev_controller** %5, align 8
  %10 = icmp ne %struct.serdev_controller* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.serdev_controller*, %struct.serdev_controller** %5, align 8
  %13 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.serdev_controller*, i32)*, i32 (%struct.serdev_controller*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.serdev_controller*, i32)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11, %2
  br label %28

19:                                               ; preds = %11
  %20 = load %struct.serdev_controller*, %struct.serdev_controller** %5, align 8
  %21 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.serdev_controller*, i32)*, i32 (%struct.serdev_controller*, i32)** %23, align 8
  %25 = load %struct.serdev_controller*, %struct.serdev_controller** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 %24(%struct.serdev_controller* %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
