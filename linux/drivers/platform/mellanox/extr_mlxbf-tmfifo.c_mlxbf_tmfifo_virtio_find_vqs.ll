; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_virtio_find_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_virtio_find_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtqueue = type { %struct.mlxbf_tmfifo_vring* }
%struct.mlxbf_tmfifo_vring = type { %struct.virtqueue*, i32, i32, i32 }
%struct.irq_affinity = type { i32 }
%struct.mlxbf_tmfifo_vdev = type { %struct.mlxbf_tmfifo_vring* }

@EINVAL = common dso_local global i32 0, align 4
@mlxbf_tmfifo_virtio_notify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"vring_new_virtqueue failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**, i32*, %struct.irq_affinity*)* @mlxbf_tmfifo_virtio_find_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxbf_tmfifo_virtio_find_vqs(%struct.virtio_device* %0, i32 %1, %struct.virtqueue** %2, i32** %3, i8** %4, i32* %5, %struct.irq_affinity* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.virtio_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtqueue**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.irq_affinity*, align 8
  %16 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %17 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %18 = alloca %struct.virtqueue*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.virtqueue** %2, %struct.virtqueue*** %11, align 8
  store i32** %3, i32*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.irq_affinity* %6, %struct.irq_affinity** %15, align 8
  %22 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %23 = call %struct.mlxbf_tmfifo_vdev* @mlxbf_vdev_to_tmfifo(%struct.virtio_device* %22)
  store %struct.mlxbf_tmfifo_vdev* %23, %struct.mlxbf_tmfifo_vdev** %16, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %16, align 8
  %26 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %25, i32 0, i32 0
  %27 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %26, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.mlxbf_tmfifo_vring* %27)
  %29 = icmp ugt i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %118

33:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  br label %34

34:                                               ; preds = %110, %33
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %113

38:                                               ; preds = %34
  %39 = load i8**, i8*** %13, align 8
  %40 = load i32, i32* %19, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %20, align 4
  br label %114

48:                                               ; preds = %38
  %49 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %16, align 8
  %50 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %49, i32 0, i32 0
  %51 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %50, align 8
  %52 = load i32, i32* %19, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %51, i64 %53
  store %struct.mlxbf_tmfifo_vring* %54, %struct.mlxbf_tmfifo_vring** %17, align 8
  %55 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %56 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %59 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @vring_size(i32 %57, i32 %60)
  store i32 %61, i32* %21, align 4
  %62 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %63 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @memset(i32 %64, i32 0, i32 %65)
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %69 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %72 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %75 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %76 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @mlxbf_tmfifo_virtio_notify, align 4
  %79 = load i32**, i32*** %12, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i8**, i8*** %13, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call %struct.virtqueue* @vring_new_virtqueue(i32 %67, i32 %70, i32 %73, %struct.virtio_device* %74, i32 0, i32 0, i32 %77, i32 %78, i32* %83, i8* %88)
  store %struct.virtqueue* %89, %struct.virtqueue** %18, align 8
  %90 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  %91 = icmp ne %struct.virtqueue* %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %48
  %93 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %94 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %20, align 4
  br label %114

98:                                               ; preds = %48
  %99 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  %100 = load %struct.virtqueue**, %struct.virtqueue*** %11, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %100, i64 %102
  store %struct.virtqueue* %99, %struct.virtqueue** %103, align 8
  %104 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  %105 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %106 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %105, i32 0, i32 0
  store %struct.virtqueue* %104, %struct.virtqueue** %106, align 8
  %107 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %17, align 8
  %108 = load %struct.virtqueue*, %struct.virtqueue** %18, align 8
  %109 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %108, i32 0, i32 0
  store %struct.mlxbf_tmfifo_vring* %107, %struct.mlxbf_tmfifo_vring** %109, align 8
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %19, align 4
  br label %34

113:                                              ; preds = %34
  store i32 0, i32* %8, align 4
  br label %118

114:                                              ; preds = %92, %45
  %115 = load %struct.virtio_device*, %struct.virtio_device** %9, align 8
  %116 = call i32 @mlxbf_tmfifo_virtio_del_vqs(%struct.virtio_device* %115)
  %117 = load i32, i32* %20, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %113, %30
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local %struct.mlxbf_tmfifo_vdev* @mlxbf_vdev_to_tmfifo(%struct.virtio_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mlxbf_tmfifo_vring*) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.virtqueue* @vring_new_virtqueue(i32, i32, i32, %struct.virtio_device*, i32, i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mlxbf_tmfifo_virtio_del_vqs(%struct.virtio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
