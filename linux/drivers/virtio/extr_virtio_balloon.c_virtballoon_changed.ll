; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_virtballoon_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_virtballoon_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.virtio_balloon* }
%struct.virtio_balloon = type { i32, i32, i32 }

@system_freezable_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtballoon_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtballoon_changed(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca i64, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %6 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %5, i32 0, i32 0
  %7 = load %struct.virtio_balloon*, %struct.virtio_balloon** %6, align 8
  store %struct.virtio_balloon* %7, %struct.virtio_balloon** %3, align 8
  %8 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %9 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %13 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @system_freezable_wq, align 4
  %18 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %18, i32 0, i32 1
  %20 = call i32 @queue_work(i32 %17, i32* %19)
  %21 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %22 = call i32 @virtio_balloon_queue_free_page_work(%struct.virtio_balloon* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %25 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @virtio_balloon_queue_free_page_work(%struct.virtio_balloon*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
