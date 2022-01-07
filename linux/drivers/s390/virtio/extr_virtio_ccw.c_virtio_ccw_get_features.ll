; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.virtio_ccw_device = type { i64, i32 }
%struct.virtio_feature_desc = type { i32, i32, i32, i8*, i64, i8* }
%struct.ccw1 = type { i32, i32, i32, i8*, i64, i8* }

@CCW_CMD_READ_FEAT = common dso_local global i8* null, align 8
@VIRTIO_CCW_DOING_READ_FEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @virtio_ccw_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_ccw_get_features(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtio_ccw_device*, align 8
  %5 = alloca %struct.virtio_feature_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccw1*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %9 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %10 = call %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device* %9)
  store %struct.virtio_ccw_device* %10, %struct.virtio_ccw_device** %4, align 8
  %11 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %12 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.virtio_feature_desc* @ccw_device_dma_zalloc(i32 %13, i32 40)
  %15 = bitcast %struct.virtio_feature_desc* %14 to %struct.ccw1*
  store %struct.ccw1* %15, %struct.ccw1** %8, align 8
  %16 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %17 = icmp ne %struct.ccw1* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

19:                                               ; preds = %1
  %20 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %21 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.virtio_feature_desc* @ccw_device_dma_zalloc(i32 %22, i32 40)
  store %struct.virtio_feature_desc* %23, %struct.virtio_feature_desc** %5, align 8
  %24 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %25 = icmp ne %struct.virtio_feature_desc* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %91

27:                                               ; preds = %19
  %28 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %29 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i8*, i8** @CCW_CMD_READ_FEAT, align 8
  %31 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %32 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %34 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %36 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %35, i32 0, i32 1
  store i32 40, i32* %36, align 4
  %37 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %38 = ptrtoint %struct.virtio_feature_desc* %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %41 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %43 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %44 = bitcast %struct.ccw1* %43 to %struct.virtio_feature_desc*
  %45 = load i32, i32* @VIRTIO_CCW_DOING_READ_FEAT, align 4
  %46 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %42, %struct.virtio_feature_desc* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %91

50:                                               ; preds = %27
  %51 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %52 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %56 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %91

60:                                               ; preds = %50
  %61 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %62 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i8*, i8** @CCW_CMD_READ_FEAT, align 8
  %64 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %65 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %67 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %69 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %68, i32 0, i32 1
  store i32 40, i32* %69, align 4
  %70 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %71 = ptrtoint %struct.virtio_feature_desc* %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %74 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %76 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %77 = bitcast %struct.ccw1* %76 to %struct.virtio_feature_desc*
  %78 = load i32, i32* @VIRTIO_CCW_DOING_READ_FEAT, align 4
  %79 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %75, %struct.virtio_feature_desc* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %60
  %83 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %84 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @le32_to_cpu(i32 %85)
  %87 = shl i32 %86, 32
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %82, %60
  br label %91

91:                                               ; preds = %90, %59, %49, %26
  %92 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %93 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %96 = call i32 @ccw_device_dma_free(i32 %94, %struct.virtio_feature_desc* %95, i32 40)
  %97 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %98 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %101 = bitcast %struct.ccw1* %100 to %struct.virtio_feature_desc*
  %102 = call i32 @ccw_device_dma_free(i32 %99, %struct.virtio_feature_desc* %101, i32 40)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %91, %18
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device*) #1

declare dso_local %struct.virtio_feature_desc* @ccw_device_dma_zalloc(i32, i32) #1

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.virtio_feature_desc*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ccw_device_dma_free(i32, %struct.virtio_feature_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
