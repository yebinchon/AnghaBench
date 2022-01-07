; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_virtballoon_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_virtballoon_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }

@VIRTIO_BALLOON_F_PAGE_POISON = common dso_local global i32 0, align 4
@VIRTIO_F_IOMMU_PLATFORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @virtballoon_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtballoon_validate(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %3 = call i32 (...) @page_poisoning_enabled()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %7 = load i32, i32* @VIRTIO_BALLOON_F_PAGE_POISON, align 4
  %8 = call i32 @__virtio_clear_bit(%struct.virtio_device* %6, i32 %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %11 = load i32, i32* @VIRTIO_F_IOMMU_PLATFORM, align 4
  %12 = call i32 @__virtio_clear_bit(%struct.virtio_device* %10, i32 %11)
  ret i32 0
}

declare dso_local i32 @page_poisoning_enabled(...) #1

declare dso_local i32 @__virtio_clear_bit(%struct.virtio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
