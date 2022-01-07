; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_kick_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_kick_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.virtio_scsi_event_node = type { i32, i32 }
%struct.scatterlist = type { i32 }

@virtscsi_handle_event = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_scsi*, %struct.virtio_scsi_event_node*)* @virtscsi_kick_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtscsi_kick_event(%struct.virtio_scsi* %0, %struct.virtio_scsi_event_node* %1) #0 {
  %3 = alloca %struct.virtio_scsi*, align 8
  %4 = alloca %struct.virtio_scsi_event_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca i64, align 8
  store %struct.virtio_scsi* %0, %struct.virtio_scsi** %3, align 8
  store %struct.virtio_scsi_event_node* %1, %struct.virtio_scsi_event_node** %4, align 8
  %8 = load %struct.virtio_scsi_event_node*, %struct.virtio_scsi_event_node** %4, align 8
  %9 = getelementptr inbounds %struct.virtio_scsi_event_node, %struct.virtio_scsi_event_node* %8, i32 0, i32 1
  %10 = load i32, i32* @virtscsi_handle_event, align 4
  %11 = call i32 @INIT_WORK(i32* %9, i32 %10)
  %12 = load %struct.virtio_scsi_event_node*, %struct.virtio_scsi_event_node** %4, align 8
  %13 = getelementptr inbounds %struct.virtio_scsi_event_node, %struct.virtio_scsi_event_node* %12, i32 0, i32 0
  %14 = call i32 @sg_init_one(%struct.scatterlist* %6, i32* %13, i32 4)
  %15 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %16 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %21 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.virtio_scsi_event_node*, %struct.virtio_scsi_event_node** %4, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @virtqueue_add_inbuf(i32 %23, %struct.scatterlist* %6, i32 1, %struct.virtio_scsi_event_node* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %31 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @virtqueue_kick(i32 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.virtio_scsi*, %struct.virtio_scsi** %3, align 8
  %37 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtqueue_add_inbuf(i32, %struct.scatterlist*, i32, %struct.virtio_scsi_event_node*, i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
