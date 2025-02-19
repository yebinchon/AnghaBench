; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_register_virtio_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_register_virtio_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_driver = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@virtio_bus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_virtio_driver(%struct.virtio_driver* %0) #0 {
  %2 = alloca %struct.virtio_driver*, align 8
  store %struct.virtio_driver* %0, %struct.virtio_driver** %2, align 8
  %3 = load %struct.virtio_driver*, %struct.virtio_driver** %2, align 8
  %4 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.virtio_driver*, %struct.virtio_driver** %2, align 8
  %9 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.virtio_driver*, %struct.virtio_driver** %2, align 8
  %18 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* @virtio_bus, i32** %19, align 8
  %20 = load %struct.virtio_driver*, %struct.virtio_driver** %2, align 8
  %21 = getelementptr inbounds %struct.virtio_driver, %struct.virtio_driver* %20, i32 0, i32 0
  %22 = call i32 @driver_register(%struct.TYPE_2__* %21)
  ret i32 %22
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
