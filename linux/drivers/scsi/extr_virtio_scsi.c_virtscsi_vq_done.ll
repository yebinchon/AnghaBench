; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_vq_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_vq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi = type { i32 }
%struct.virtio_scsi_vq = type { i32, %struct.virtqueue* }
%struct.virtqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_scsi*, %struct.virtio_scsi_vq*, void (%struct.virtio_scsi*, i8*)*)* @virtscsi_vq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_vq_done(%struct.virtio_scsi* %0, %struct.virtio_scsi_vq* %1, void (%struct.virtio_scsi*, i8*)* %2) #0 {
  %4 = alloca %struct.virtio_scsi*, align 8
  %5 = alloca %struct.virtio_scsi_vq*, align 8
  %6 = alloca void (%struct.virtio_scsi*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.virtqueue*, align 8
  store %struct.virtio_scsi* %0, %struct.virtio_scsi** %4, align 8
  store %struct.virtio_scsi_vq* %1, %struct.virtio_scsi_vq** %5, align 8
  store void (%struct.virtio_scsi*, i8*)* %2, void (%struct.virtio_scsi*, i8*)** %6, align 8
  %11 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %5, align 8
  %12 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %11, i32 0, i32 1
  %13 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  store %struct.virtqueue* %13, %struct.virtqueue** %10, align 8
  %14 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %5, align 8
  %15 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  br label %18

18:                                               ; preds = %36, %3
  %19 = load %struct.virtqueue*, %struct.virtqueue** %10, align 8
  %20 = call i32 @virtqueue_disable_cb(%struct.virtqueue* %19)
  br label %21

21:                                               ; preds = %25, %18
  %22 = load %struct.virtqueue*, %struct.virtqueue** %10, align 8
  %23 = call i8* @virtqueue_get_buf(%struct.virtqueue* %22, i32* %8)
  store i8* %23, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load void (%struct.virtio_scsi*, i8*)*, void (%struct.virtio_scsi*, i8*)** %6, align 8
  %27 = load %struct.virtio_scsi*, %struct.virtio_scsi** %4, align 8
  %28 = load i8*, i8** %7, align 8
  call void %26(%struct.virtio_scsi* %27, i8* %28)
  br label %21

29:                                               ; preds = %21
  %30 = load %struct.virtqueue*, %struct.virtqueue** %10, align 8
  %31 = call i32 @virtqueue_is_broken(%struct.virtqueue* %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %41

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.virtqueue*, %struct.virtqueue** %10, align 8
  %38 = call i32 @virtqueue_enable_cb(%struct.virtqueue* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %18, label %41

41:                                               ; preds = %36, %34
  %42 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %5, align 8
  %43 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %42, i32 0, i32 0
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtqueue_disable_cb(%struct.virtqueue*) #1

declare dso_local i8* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @virtqueue_is_broken(%struct.virtqueue*) #1

declare dso_local i32 @virtqueue_enable_cb(%struct.virtqueue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
