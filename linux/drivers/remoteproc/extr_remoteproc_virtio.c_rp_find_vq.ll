; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rp_find_vq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_virtio.c_rp_find_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.rproc_vring* }
%struct.rproc_vring = type { i32, %struct.virtqueue*, i32, i32 }
%struct.virtio_device = type { i32 }
%struct.rproc_vdev = type { i32, %struct.rproc_vring*, i32 }
%struct.rproc = type { i64, %struct.device }
%struct.device = type { i32 }
%struct.rproc_mem_entry = type { i32, i8* }
%struct.fw_rsc_vdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vdev%dvring%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"vring%d: va %pK qsz %d notifyid %d\0A\00", align 1
@rproc_virtio_notify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"vring_new_virtqueue %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (%struct.virtio_device*, i32, void (%struct.virtqueue*)*, i8*, i32)* @rp_find_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @rp_find_vq(%struct.virtio_device* %0, i32 %1, void (%struct.virtqueue*)* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.virtqueue*, align 8
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.virtqueue*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rproc_vdev*, align 8
  %13 = alloca %struct.rproc*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.rproc_mem_entry*, align 8
  %16 = alloca %struct.rproc_vring*, align 8
  %17 = alloca %struct.fw_rsc_vdev*, align 8
  %18 = alloca %struct.virtqueue*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store void (%struct.virtqueue*)* %2, void (%struct.virtqueue*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %23 = call %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device* %22)
  store %struct.rproc_vdev* %23, %struct.rproc_vdev** %12, align 8
  %24 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %25 = call %struct.rproc* @vdev_to_rproc(%struct.virtio_device* %24)
  store %struct.rproc* %25, %struct.rproc** %13, align 8
  %26 = load %struct.rproc*, %struct.rproc** %13, align 8
  %27 = getelementptr inbounds %struct.rproc, %struct.rproc* %26, i32 0, i32 1
  store %struct.device* %27, %struct.device** %14, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.rproc_vdev*, %struct.rproc_vdev** %12, align 8
  %30 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %29, i32 0, i32 1
  %31 = load %struct.rproc_vring*, %struct.rproc_vring** %30, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.rproc_vring* %31)
  %33 = icmp uge i32 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.virtqueue* @ERR_PTR(i32 %36)
  store %struct.virtqueue* %37, %struct.virtqueue** %6, align 8
  br label %140

38:                                               ; preds = %5
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store %struct.virtqueue* null, %struct.virtqueue** %6, align 8
  br label %140

42:                                               ; preds = %38
  %43 = load %struct.rproc*, %struct.rproc** %13, align 8
  %44 = load %struct.rproc_vdev*, %struct.rproc_vdev** %12, align 8
  %45 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.rproc_mem_entry* @rproc_find_carveout_by_name(%struct.rproc* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  store %struct.rproc_mem_entry* %48, %struct.rproc_mem_entry** %15, align 8
  %49 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %15, align 8
  %50 = icmp ne %struct.rproc_mem_entry* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %15, align 8
  %53 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51, %42
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.virtqueue* @ERR_PTR(i32 %58)
  store %struct.virtqueue* %59, %struct.virtqueue** %6, align 8
  br label %140

60:                                               ; preds = %51
  %61 = load %struct.rproc_vdev*, %struct.rproc_vdev** %12, align 8
  %62 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %61, i32 0, i32 1
  %63 = load %struct.rproc_vring*, %struct.rproc_vring** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %63, i64 %65
  store %struct.rproc_vring* %66, %struct.rproc_vring** %16, align 8
  %67 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %15, align 8
  %68 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %19, align 8
  %70 = load %struct.rproc_vring*, %struct.rproc_vring** %16, align 8
  %71 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load %struct.rproc_vring*, %struct.rproc_vring** %16, align 8
  %75 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @vring_size(i32 %73, i32 %76)
  store i32 %77, i32* %21, align 4
  %78 = load i8*, i8** %19, align 8
  %79 = load i32, i32* %21, align 4
  %80 = call i32 @memset(i8* %78, i32 0, i32 %79)
  %81 = load %struct.device*, %struct.device** %14, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i8*, i8** %19, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load %struct.rproc_vring*, %struct.rproc_vring** %16, align 8
  %86 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(%struct.device* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* %83, i32 %84, i32 %87)
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load %struct.rproc_vring*, %struct.rproc_vring** %16, align 8
  %92 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i8*, i8** %19, align 8
  %97 = load i32, i32* @rproc_virtio_notify, align 4
  %98 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %9, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = call %struct.virtqueue* @vring_new_virtqueue(i32 %89, i32 %90, i32 %93, %struct.virtio_device* %94, i32 0, i32 %95, i8* %96, i32 %97, void (%struct.virtqueue*)* %98, i8* %99)
  store %struct.virtqueue* %100, %struct.virtqueue** %18, align 8
  %101 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  %102 = icmp ne %struct.virtqueue* %101, null
  br i1 %102, label %112, label %103

103:                                              ; preds = %60
  %104 = load %struct.device*, %struct.device** %14, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  %107 = load %struct.rproc_vring*, %struct.rproc_vring** %16, align 8
  %108 = call i32 @rproc_free_vring(%struct.rproc_vring* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  %111 = call %struct.virtqueue* @ERR_PTR(i32 %110)
  store %struct.virtqueue* %111, %struct.virtqueue** %6, align 8
  br label %140

112:                                              ; preds = %60
  %113 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  %114 = load %struct.rproc_vring*, %struct.rproc_vring** %16, align 8
  %115 = getelementptr inbounds %struct.rproc_vring, %struct.rproc_vring* %114, i32 0, i32 1
  store %struct.virtqueue* %113, %struct.virtqueue** %115, align 8
  %116 = load %struct.rproc_vring*, %struct.rproc_vring** %16, align 8
  %117 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  %118 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %117, i32 0, i32 0
  store %struct.rproc_vring* %116, %struct.rproc_vring** %118, align 8
  %119 = load %struct.rproc*, %struct.rproc** %13, align 8
  %120 = getelementptr inbounds %struct.rproc, %struct.rproc* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = load %struct.rproc_vdev*, %struct.rproc_vdev** %12, align 8
  %124 = getelementptr inbounds %struct.rproc_vdev, %struct.rproc_vdev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr i8, i8* %122, i64 %126
  %128 = bitcast i8* %127 to %struct.fw_rsc_vdev*
  store %struct.fw_rsc_vdev* %128, %struct.fw_rsc_vdev** %17, align 8
  %129 = load %struct.rproc_mem_entry*, %struct.rproc_mem_entry** %15, align 8
  %130 = getelementptr inbounds %struct.rproc_mem_entry, %struct.rproc_mem_entry* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.fw_rsc_vdev*, %struct.fw_rsc_vdev** %17, align 8
  %133 = getelementptr inbounds %struct.fw_rsc_vdev, %struct.fw_rsc_vdev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %131, i32* %138, align 4
  %139 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  store %struct.virtqueue* %139, %struct.virtqueue** %6, align 8
  br label %140

140:                                              ; preds = %112, %103, %56, %41, %34
  %141 = load %struct.virtqueue*, %struct.virtqueue** %6, align 8
  ret %struct.virtqueue* %141
}

declare dso_local %struct.rproc_vdev* @vdev_to_rvdev(%struct.virtio_device*) #1

declare dso_local %struct.rproc* @vdev_to_rproc(%struct.virtio_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rproc_vring*) #1

declare dso_local %struct.virtqueue* @ERR_PTR(i32) #1

declare dso_local %struct.rproc_mem_entry* @rproc_find_carveout_by_name(%struct.rproc*, i8*, i32, i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i32, i32) #1

declare dso_local %struct.virtqueue* @vring_new_virtqueue(i32, i32, i32, %struct.virtio_device*, i32, i32, i8*, i32, void (%struct.virtqueue*)*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @rproc_free_vring(%struct.rproc_vring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
