; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_pick_vq_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_pick_vq_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi_vq = type { i32 }
%struct.virtio_scsi = type { %struct.virtio_scsi_vq* }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtio_scsi_vq* (%struct.virtio_scsi*, %struct.scsi_cmnd*)* @virtscsi_pick_vq_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtio_scsi_vq* @virtscsi_pick_vq_mq(%struct.virtio_scsi* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.virtio_scsi*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.virtio_scsi* %0, %struct.virtio_scsi** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @blk_mq_unique_tag(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @blk_mq_unique_tag_to_hwq(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %13, i32 0, i32 0
  %15 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %15, i64 %16
  ret %struct.virtio_scsi_vq* %17
}

declare dso_local i32 @blk_mq_unique_tag(i32) #1

declare dso_local i64 @blk_mq_unique_tag_to_hwq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
