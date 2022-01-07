; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_virtballoon_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_virtballoon_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.virtio_balloon* }
%struct.virtio_balloon = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, %struct.virtio_device* }
%struct.TYPE_2__ = type { i64 }

@VIRTIO_BALLOON_F_DEFLATE_ON_OOM = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_F_FREE_PAGE_HINT = common dso_local global i32 0, align 4
@balloon_mnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtballoon_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtballoon_remove(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtio_balloon*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 0
  %6 = load %struct.virtio_balloon*, %struct.virtio_balloon** %5, align 8
  store %struct.virtio_balloon* %6, %struct.virtio_balloon** %3, align 8
  %7 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %7, i32 0, i32 7
  %9 = load %struct.virtio_device*, %struct.virtio_device** %8, align 8
  %10 = load i32, i32* @VIRTIO_BALLOON_F_DEFLATE_ON_OOM, align 4
  %11 = call i64 @virtio_has_feature(%struct.virtio_device* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %15 = call i32 @virtio_balloon_unregister_shrinker(%struct.virtio_balloon* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %18 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %17, i32 0, i32 6
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %21 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %23 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %22, i32 0, i32 6
  %24 = call i32 @spin_unlock_irq(i32* %23)
  %25 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %26 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %25, i32 0, i32 5
  %27 = call i32 @cancel_work_sync(i32* %26)
  %28 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %29 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %28, i32 0, i32 4
  %30 = call i32 @cancel_work_sync(i32* %29)
  %31 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %32 = load i32, i32* @VIRTIO_BALLOON_F_FREE_PAGE_HINT, align 4
  %33 = call i64 @virtio_has_feature(%struct.virtio_device* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %16
  %36 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %37 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %36, i32 0, i32 3
  %38 = call i32 @cancel_work_sync(i32* %37)
  %39 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %40 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @destroy_workqueue(i32 %41)
  br label %43

43:                                               ; preds = %35, %16
  %44 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %45 = call i32 @remove_common(%struct.virtio_balloon* %44)
  %46 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %47 = call i32 @kfree(%struct.virtio_balloon* %46)
  ret void
}

declare dso_local i64 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local i32 @virtio_balloon_unregister_shrinker(%struct.virtio_balloon*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @remove_common(%struct.virtio_balloon*) #1

declare dso_local i32 @kfree(%struct.virtio_balloon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
