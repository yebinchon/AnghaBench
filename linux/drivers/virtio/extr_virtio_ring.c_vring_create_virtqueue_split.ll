; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_create_virtqueue_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_vring_create_virtqueue_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.virtio_device = type { i32 }
%struct.vring = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Bad virtqueue length %u\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (i32, i32, i32, %struct.virtio_device*, i32, i32, i32, i32 (%struct.virtqueue*)*, void (%struct.virtqueue*)*, i8*)* @vring_create_virtqueue_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @vring_create_virtqueue_split(i32 %0, i32 %1, i32 %2, %struct.virtio_device* %3, i32 %4, i32 %5, i32 %6, i32 (%struct.virtqueue*)* %7, void (%struct.virtqueue*)* %8, i8* %9) #0 {
  %11 = alloca %struct.virtqueue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.virtio_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32 (%struct.virtqueue*)*, align 8
  %20 = alloca void (%struct.virtqueue*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.virtqueue*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.vring, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.virtio_device* %3, %struct.virtio_device** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 (%struct.virtqueue*)* %7, i32 (%struct.virtqueue*)** %19, align 8
  store void (%struct.virtqueue*)* %8, void (%struct.virtqueue*)** %20, align 8
  store i8* %9, i8** %21, align 8
  store i8* null, i8** %23, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sub i32 %28, 1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %10
  %33 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %34 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %33, i32 0, i32 0
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35)
  store %struct.virtqueue* null, %struct.virtqueue** %11, align 8
  br label %132

37:                                               ; preds = %10
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @vring_size(i32 %42, i32 %43)
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = icmp ugt i64 %44, %45
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %49, label %71

49:                                               ; preds = %47
  %50 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @vring_size(i32 %51, i32 %52)
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = load i32, i32* @__GFP_NOWARN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @__GFP_ZERO, align 4
  %58 = or i32 %56, %57
  %59 = call i8* @vring_alloc_queue(%struct.virtio_device* %50, i64 %53, i32* %24, i32 %58)
  store i8* %59, i8** %23, align 8
  %60 = load i8*, i8** %23, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %71

63:                                               ; preds = %49
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store %struct.virtqueue* null, %struct.virtqueue** %11, align 8
  br label %132

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = udiv i32 %69, 2
  store i32 %70, i32* %13, align 4
  br label %38

71:                                               ; preds = %62, %47
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  store %struct.virtqueue* null, %struct.virtqueue** %11, align 8
  br label %132

75:                                               ; preds = %71
  %76 = load i8*, i8** %23, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @vring_size(i32 %80, i32 %81)
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = load i32, i32* @__GFP_ZERO, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @vring_alloc_queue(%struct.virtio_device* %79, i64 %82, i32* %24, i32 %85)
  store i8* %86, i8** %23, align 8
  br label %87

87:                                               ; preds = %78, %75
  %88 = load i8*, i8** %23, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store %struct.virtqueue* null, %struct.virtqueue** %11, align 8
  br label %132

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i64 @vring_size(i32 %92, i32 %93)
  store i64 %94, i64* %25, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i8*, i8** %23, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @vring_init(%struct.vring* %26, i32 %95, i8* %96, i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32 (%struct.virtqueue*)*, i32 (%struct.virtqueue*)** %19, align 8
  %104 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %20, align 8
  %105 = load i8*, i8** %21, align 8
  %106 = getelementptr inbounds %struct.vring, %struct.vring* %26, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.virtqueue* @__vring_new_virtqueue(i32 %99, i32 %107, %struct.virtio_device* %100, i32 %101, i32 %102, i32 (%struct.virtqueue*)* %103, void (%struct.virtqueue*)* %104, i8* %105)
  store %struct.virtqueue* %108, %struct.virtqueue** %22, align 8
  %109 = load %struct.virtqueue*, %struct.virtqueue** %22, align 8
  %110 = icmp ne %struct.virtqueue* %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %91
  %112 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  %113 = load i64, i64* %25, align 8
  %114 = load i8*, i8** %23, align 8
  %115 = load i32, i32* %24, align 4
  %116 = call i32 @vring_free_queue(%struct.virtio_device* %112, i64 %113, i8* %114, i32 %115)
  store %struct.virtqueue* null, %struct.virtqueue** %11, align 8
  br label %132

117:                                              ; preds = %91
  %118 = load i32, i32* %24, align 4
  %119 = load %struct.virtqueue*, %struct.virtqueue** %22, align 8
  %120 = call %struct.TYPE_4__* @to_vvq(%struct.virtqueue* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 8
  %123 = load i64, i64* %25, align 8
  %124 = load %struct.virtqueue*, %struct.virtqueue** %22, align 8
  %125 = call %struct.TYPE_4__* @to_vvq(%struct.virtqueue* %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i64 %123, i64* %127, align 8
  %128 = load %struct.virtqueue*, %struct.virtqueue** %22, align 8
  %129 = call %struct.TYPE_4__* @to_vvq(%struct.virtqueue* %128)
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.virtqueue*, %struct.virtqueue** %22, align 8
  store %struct.virtqueue* %131, %struct.virtqueue** %11, align 8
  br label %132

132:                                              ; preds = %117, %111, %90, %74, %66, %32
  %133 = load %struct.virtqueue*, %struct.virtqueue** %11, align 8
  ret %struct.virtqueue* %133
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @vring_size(i32, i32) #1

declare dso_local i8* @vring_alloc_queue(%struct.virtio_device*, i64, i32*, i32) #1

declare dso_local i32 @vring_init(%struct.vring*, i32, i8*, i32) #1

declare dso_local %struct.virtqueue* @__vring_new_virtqueue(i32, i32, %struct.virtio_device*, i32, i32, i32 (%struct.virtqueue*)*, void (%struct.virtqueue*)*, i8*) #1

declare dso_local i32 @vring_free_queue(%struct.virtio_device*, i64, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @to_vvq(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
