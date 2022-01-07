; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_read_vq_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_read_vq_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ccw1 = type { i32, i64, i64, i32 }

@CCW_CMD_READ_VQ_CONF = common dso_local global i32 0, align 4
@VIRTIO_CCW_DOING_READ_VQ_CONF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_ccw_device*, %struct.ccw1*, i32)* @virtio_ccw_read_vq_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_ccw_read_vq_conf(%struct.virtio_ccw_device* %0, %struct.ccw1* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_ccw_device*, align 8
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.virtio_ccw_device* %0, %struct.virtio_ccw_device** %5, align 8
  store %struct.ccw1* %1, %struct.ccw1** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %11 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %9, i32* %14, align 8
  %15 = load i32, i32* @CCW_CMD_READ_VQ_CONF, align 4
  %16 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %17 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %19 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %21 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %23 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = ptrtoint %struct.TYPE_3__* %25 to i64
  %27 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %28 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %30 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %31 = load i32, i32* @VIRTIO_CCW_DOING_READ_VQ_CONF, align 4
  %32 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %29, %struct.ccw1* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %3
  %38 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %39 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %46, %45
  %51 = phi i64 [ %43, %45 ], [ %49, %46 ]
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %35
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.ccw1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
