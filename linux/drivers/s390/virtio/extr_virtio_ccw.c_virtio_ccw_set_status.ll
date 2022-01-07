; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_ccw_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.ccw1 = type { i32, i64, i64, i32 }

@CCW_CMD_WRITE_STATUS = common dso_local global i32 0, align 4
@VIRTIO_CCW_DOING_WRITE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*, i8*)* @virtio_ccw_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_ccw_set_status(%struct.virtio_device* %0, i8* %1) #0 {
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.virtio_ccw_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccw1*, align 8
  %8 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %10 = call %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device* %9)
  store %struct.virtio_ccw_device* %10, %struct.virtio_ccw_device** %5, align 8
  %11 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %12 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %17 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ccw1* @ccw_device_dma_zalloc(i32 %18, i32 32)
  store %struct.ccw1* %19, %struct.ccw1** %7, align 8
  %20 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %21 = icmp ne %struct.ccw1* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %61

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %26 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* @CCW_CMD_WRITE_STATUS, align 4
  %30 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %31 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %33 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %35 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %34, i32 0, i32 0
  store i32 8, i32* %35, align 8
  %36 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %37 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = ptrtoint i8** %39 to i64
  %41 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %42 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %44 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %45 = load i32, i32* @VIRTIO_CCW_DOING_WRITE_STATUS, align 4
  %46 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %43, %struct.ccw1* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %23
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %52 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %23
  %56 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %57 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %60 = call i32 @ccw_device_dma_free(i32 %58, %struct.ccw1* %59, i32 32)
  br label %61

61:                                               ; preds = %55, %22
  ret void
}

declare dso_local %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device*) #1

declare dso_local %struct.ccw1* @ccw_device_dma_zalloc(i32, i32) #1

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.ccw1*, i32) #1

declare dso_local i32 @ccw_device_dma_free(i32, %struct.ccw1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
