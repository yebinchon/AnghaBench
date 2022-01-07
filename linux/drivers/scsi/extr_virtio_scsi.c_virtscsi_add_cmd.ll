; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_add_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_virtio_scsi.c_virtscsi_add_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi_vq = type { i32, i32 }
%struct.virtio_scsi_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_scsi_vq*, %struct.virtio_scsi_cmd*, i64, i64, i32)* @virtscsi_add_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtscsi_add_cmd(%struct.virtio_scsi_vq* %0, %struct.virtio_scsi_cmd* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.virtio_scsi_vq*, align 8
  %7 = alloca %struct.virtio_scsi_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.virtio_scsi_vq* %0, %struct.virtio_scsi_vq** %6, align 8
  store %struct.virtio_scsi_cmd* %1, %struct.virtio_scsi_cmd** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %6, align 8
  %15 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %14, i32 0, i32 1
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %6, align 8
  %19 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @__virtscsi_add_cmd(i32 %20, %struct.virtio_scsi_cmd* %21, i64 %22, i64 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %6, align 8
  %32 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @virtqueue_kick_prepare(i32 %33)
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %30, %27, %5
  %36 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %6, align 8
  %37 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %36, i32 0, i32 1
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.virtio_scsi_vq*, %struct.virtio_scsi_vq** %6, align 8
  %44 = getelementptr inbounds %struct.virtio_scsi_vq, %struct.virtio_scsi_vq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @virtqueue_notify(i32 %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__virtscsi_add_cmd(i32, %struct.virtio_scsi_cmd*, i64, i64) #1

declare dso_local i32 @virtqueue_kick_prepare(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @virtqueue_notify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
