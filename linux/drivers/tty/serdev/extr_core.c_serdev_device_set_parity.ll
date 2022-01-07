; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_set_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serdev/extr_core.c_serdev_device_set_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.serdev_controller* }
%struct.serdev_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.serdev_controller*, i32)* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serdev_device_set_parity(%struct.serdev_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serdev_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.serdev_controller*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.serdev_device*, %struct.serdev_device** %4, align 8
  %8 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %7, i32 0, i32 0
  %9 = load %struct.serdev_controller*, %struct.serdev_controller** %8, align 8
  store %struct.serdev_controller* %9, %struct.serdev_controller** %6, align 8
  %10 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %11 = icmp ne %struct.serdev_controller* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %14 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.serdev_controller*, i32)*, i32 (%struct.serdev_controller*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.serdev_controller*, i32)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @ENOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %12
  %23 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %24 = getelementptr inbounds %struct.serdev_controller, %struct.serdev_controller* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.serdev_controller*, i32)*, i32 (%struct.serdev_controller*, i32)** %26, align 8
  %28 = load %struct.serdev_controller*, %struct.serdev_controller** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %27(%struct.serdev_controller* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
