; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_remove_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_remove_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @virtscsi_remove_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_remove_vqs(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %3 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %4 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %6, align 8
  %8 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %9 = call i32 %7(%struct.virtio_device* %8)
  %10 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %11 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %13, align 8
  %15 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %16 = call i32 %14(%struct.virtio_device* %15)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
