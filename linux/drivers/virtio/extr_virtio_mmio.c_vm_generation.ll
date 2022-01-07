; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_generation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_generation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_mmio_device = type { i32, i64 }

@VIRTIO_MMIO_CONFIG_GENERATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @vm_generation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_generation(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtio_mmio_device*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %6 = call %struct.virtio_mmio_device* @to_virtio_mmio_device(%struct.virtio_device* %5)
  store %struct.virtio_mmio_device* %6, %struct.virtio_mmio_device** %4, align 8
  %7 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %8 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %14 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VIRTIO_MMIO_CONFIG_GENERATION, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.virtio_mmio_device* @to_virtio_mmio_device(%struct.virtio_device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
