; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_finalize_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_finalize_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32, i32 }
%struct.virtio_ccw_device = type { i32, i32 }
%struct.virtio_feature_desc = type { i32, i32, i8*, i64, i8*, i8* }
%struct.ccw1 = type { i32, i32, i8*, i64, i8*, i8* }

@VIRTIO_F_VERSION_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"virtio: device uses revision 1 but does not have VIRTIO_F_VERSION_1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCW_CMD_WRITE_FEAT = common dso_local global i8* null, align 8
@VIRTIO_CCW_DOING_WRITE_FEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @virtio_ccw_finalize_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_ccw_finalize_features(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtio_ccw_device*, align 8
  %5 = alloca %struct.virtio_feature_desc*, align 8
  %6 = alloca %struct.ccw1*, align 8
  %7 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %8 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %9 = call %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device* %8)
  store %struct.virtio_ccw_device* %9, %struct.virtio_ccw_device** %4, align 8
  %10 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %11 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 1
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %16 = load i32, i32* @VIRTIO_F_VERSION_1, align 4
  %17 = call i32 @__virtio_test_bit(%struct.virtio_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %21 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %20, i32 0, i32 1
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %125

25:                                               ; preds = %14, %1
  %26 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %27 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.virtio_feature_desc* @ccw_device_dma_zalloc(i32 %28, i32 40)
  %30 = bitcast %struct.virtio_feature_desc* %29 to %struct.ccw1*
  store %struct.ccw1* %30, %struct.ccw1** %6, align 8
  %31 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %32 = icmp ne %struct.ccw1* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %125

36:                                               ; preds = %25
  %37 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %38 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.virtio_feature_desc* @ccw_device_dma_zalloc(i32 %39, i32 40)
  store %struct.virtio_feature_desc* %40, %struct.virtio_feature_desc** %5, align 8
  %41 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %42 = icmp ne %struct.virtio_feature_desc* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %112

46:                                               ; preds = %36
  %47 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %48 = call i32 @vring_transport_features(%struct.virtio_device* %47)
  %49 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %50 = call i32 @ccw_transport_features(%struct.virtio_device* %49)
  %51 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %52 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %54 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %58 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @CCW_CMD_WRITE_FEAT, align 8
  %60 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %61 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %63 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %65 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %64, i32 0, i32 1
  store i32 40, i32* %65, align 4
  %66 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %67 = ptrtoint %struct.virtio_feature_desc* %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %70 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %72 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %73 = bitcast %struct.ccw1* %72 to %struct.virtio_feature_desc*
  %74 = load i32, i32* @VIRTIO_CCW_DOING_WRITE_FEAT, align 4
  %75 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %71, %struct.virtio_feature_desc* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %46
  br label %112

79:                                               ; preds = %46
  %80 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %81 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %112

85:                                               ; preds = %79
  %86 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %87 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %89 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 32
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %94 = getelementptr inbounds %struct.virtio_feature_desc, %struct.virtio_feature_desc* %93, i32 0, i32 5
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @CCW_CMD_WRITE_FEAT, align 8
  %96 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %97 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %99 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %101 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %100, i32 0, i32 1
  store i32 40, i32* %101, align 4
  %102 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %103 = ptrtoint %struct.virtio_feature_desc* %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %106 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %108 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %109 = bitcast %struct.ccw1* %108 to %struct.virtio_feature_desc*
  %110 = load i32, i32* @VIRTIO_CCW_DOING_WRITE_FEAT, align 4
  %111 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %107, %struct.virtio_feature_desc* %109, i32 %110)
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %85, %84, %78, %43
  %113 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %114 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.virtio_feature_desc*, %struct.virtio_feature_desc** %5, align 8
  %117 = call i32 @ccw_device_dma_free(i32 %115, %struct.virtio_feature_desc* %116, i32 40)
  %118 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %4, align 8
  %119 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ccw1*, %struct.ccw1** %6, align 8
  %122 = bitcast %struct.ccw1* %121 to %struct.virtio_feature_desc*
  %123 = call i32 @ccw_device_dma_free(i32 %120, %struct.virtio_feature_desc* %122, i32 40)
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %112, %33, %19
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.virtio_ccw_device* @to_vc_device(%struct.virtio_device*) #1

declare dso_local i32 @__virtio_test_bit(%struct.virtio_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.virtio_feature_desc* @ccw_device_dma_zalloc(i32, i32) #1

declare dso_local i32 @vring_transport_features(%struct.virtio_device*) #1

declare dso_local i32 @ccw_transport_features(%struct.virtio_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.virtio_feature_desc*, i32) #1

declare dso_local i32 @ccw_device_dma_free(i32, %struct.virtio_feature_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
