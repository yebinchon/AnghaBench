; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_get_tiocm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_get_tiocm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.serdev_controller* }
%struct.serdev_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.serdev_controller*)* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serdev_device_get_tiocm(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.serdev_controller*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %5 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %6 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %5, i32 0, i32 0
  %7 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  store %struct.serdev_controller* %7, %struct.serdev_controller** %4, align 8
  %8 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %9 = icmp ne %struct.serdev_controller* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %12 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.serdev_controller*)*, i32 (%struct.serdev_controller*)** %14, align 8
  %16 = icmp ne i32 (%struct.serdev_controller*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %10
  %21 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %22 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.serdev_controller*)*, i32 (%struct.serdev_controller*)** %24, align 8
  %26 = load %struct.serdev_controller*, %struct.serdev_controller** %4, align 8
  %27 = call i32 %25(%struct.serdev_controller* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
