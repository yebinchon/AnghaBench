; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rproc_virtio_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.rproc_vring* }
%struct.rproc_vring = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rproc* }
%struct.rproc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.rproc*, i32)* }

@.str = private unnamed_addr constant [22 x i8] c"kicking vq index: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*)* @rproc_virtio_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_virtio_notify(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.rproc_vring*, align 8
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %6 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %7 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %6, i32 0, i32 0
  %8 = load %struct.rproc_vring*, %struct.rproc_vring** %7, align 8
  store %struct.rproc_vring* %8, %struct.rproc_vring** %3, align 8
  %9 = load %struct.rproc_vring*, %struct.rproc_vring** %3, align 8
  %10 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.rproc*, %struct.rproc** %12, align 8
  store %struct.rproc* %13, %struct.rproc** %4, align 8
  %14 = load %struct.rproc_vring*, %struct.rproc_vring** %3, align 8
  %15 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.rproc*, %struct.rproc** %4, align 8
  %18 = getelementptr inbounds %struct.rproc, %struct.rproc* %17, i32 0, i32 1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.rproc*, %struct.rproc** %4, align 8
  %22 = getelementptr inbounds %struct.rproc, %struct.rproc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.rproc*, i32)*, i32 (%struct.rproc*, i32)** %24, align 8
  %26 = load %struct.rproc*, %struct.rproc** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %25(%struct.rproc* %26, i32 %27)
  ret i32 1
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
