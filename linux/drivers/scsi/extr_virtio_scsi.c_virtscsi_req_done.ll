; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_req_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.virtio_scsi = type { %struct.virtio_scsi_vq* }
%struct.virtio_scsi_vq = type { i32 }

@VIRTIO_SCSI_VQ_BASE = common dso_local global i32 0, align 4
@virtscsi_complete_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @virtscsi_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_req_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.virtio_scsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtio_scsi_vq*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.Scsi_Host* @virtio_scsi_host(i32 %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %3, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %12 = call %struct.virtio_scsi* @shost_priv(%struct.Scsi_Host* %11)
  store %struct.virtio_scsi* %12, %struct.virtio_scsi** %4, align 8
  %13 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %14 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VIRTIO_SCSI_VQ_BASE, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %19 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %18, i32 0, i32 0
  %20 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %20, i64 %22
  store %struct.virtio_scsi_vq* %23, %struct.virtio_scsi_vq** %6, align 8
  %24 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %25 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %6, align 8
  %26 = load i32, i32* @virtscsi_complete_cmd, align 4
  %27 = call i32 @virtscsi_vq_done(%struct.virtio_scsi* %24, %struct.virtio_scsi_vq* %25, i32 %26)
  ret void
}

declare dso_local %struct.Scsi_Host* @virtio_scsi_host(i32) #1

declare dso_local %struct.virtio_scsi* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @virtscsi_vq_done(%struct.virtio_scsi*, %struct.virtio_scsi_vq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
