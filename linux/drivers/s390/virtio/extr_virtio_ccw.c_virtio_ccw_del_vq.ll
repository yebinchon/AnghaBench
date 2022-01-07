; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_del_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_del_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, %struct.TYPE_7__*, %struct.virtio_ccw_vq_info* }
%struct.TYPE_7__ = type { i32 }
%struct.virtio_ccw_vq_info = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.ccw1 = type { i32, i64, i32, i32 }
%struct.virtio_ccw_device = type { i64, i32, i32 }

@CCW_CMD_SET_VQ = common dso_local global i32 0, align 4
@VIRTIO_CCW_DOING_SET_VQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error %d while deleting queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*, %struct.ccw1*)* @virtio_ccw_del_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_ccw_del_vq(%struct.virtqueue* %0, %struct.ccw1* %1) #0 {
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.ccw1*, align 8
  %5 = alloca %struct.virtio_ccw_device*, align 8
  %6 = alloca %struct.virtio_ccw_vq_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  store %struct.ccw1* %1, %struct.ccw1** %4, align 8
  %10 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %11 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = call %struct.virtio_ccw_device* @to_vc_device(%struct.TYPE_7__* %12)
  store %struct.virtio_ccw_device* %13, %struct.virtio_ccw_device** %5, align 8
  %14 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %15 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %14, i32 0, i32 2
  %16 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %15, align 8
  store %struct.virtio_ccw_vq_info* %16, %struct.virtio_ccw_vq_info** %6, align 8
  %17 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %18 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %21 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %20, i32 0, i32 2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %25 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %24, i32 0, i32 1
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %28 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %27, i32 0, i32 2
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %32 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %2
  %36 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %37 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %42 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %48 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 8
  %52 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %53 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %58 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %57, i32 0, i32 0
  store i32 32, i32* %58, align 8
  br label %88

59:                                               ; preds = %2
  %60 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %61 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %67 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 8
  %71 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %72 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %77 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %82 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %87 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %86, i32 0, i32 0
  store i32 40, i32* %87, align 8
  br label %88

88:                                               ; preds = %59, %35
  %89 = load i32, i32* @CCW_CMD_SET_VQ, align 4
  %90 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %91 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %93 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %92, i32 0, i32 2
  store i32 0, i32* %93, align 8
  %94 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %95 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = ptrtoint %struct.TYPE_8__* %96 to i64
  %98 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %99 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %101 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %102 = load i32, i32* @VIRTIO_CCW_DOING_SET_VQ, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %100, %struct.ccw1* %101, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %88
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %115 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @dev_warn(i32* %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %113, %108, %88
  %122 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %123 = call i32 @vring_del_virtqueue(%struct.virtqueue* %122)
  %124 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %125 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %128 = getelementptr inbounds %struct.virtio_ccw_vq_info, %struct.virtio_ccw_vq_info* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = call i32 @ccw_device_dma_free(i32 %126, %struct.TYPE_8__* %129, i32 72)
  %131 = load %struct.virtio_ccw_vq_info*, %struct.virtio_ccw_vq_info** %6, align 8
  %132 = call i32 @kfree(%struct.virtio_ccw_vq_info* %131)
  ret void
}

declare dso_local %struct.virtio_ccw_device* @to_vc_device(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.ccw1*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @ccw_device_dma_free(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @kfree(%struct.virtio_ccw_vq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
