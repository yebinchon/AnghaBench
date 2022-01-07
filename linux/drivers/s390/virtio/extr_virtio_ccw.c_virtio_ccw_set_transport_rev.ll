; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_set_transport_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_set_transport_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_ccw_device = type { i64, i32 }
%struct.virtio_rev_info = type { i32, i64, i64, i64, i64, i32 }
%struct.ccw1 = type { i32, i64, i64, i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CCW_CMD_SET_VIRTIO_REV = common dso_local global i32 0, align 4
@VIRTIO_CCW_REV_MAX = common dso_local global i64 0, align 8
@VIRTIO_CCW_DOING_SET_VIRTIO_REV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_ccw_device*)* @virtio_ccw_set_transport_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_ccw_set_transport_rev(%struct.virtio_ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_ccw_device*, align 8
  %4 = alloca %struct.virtio_rev_info*, align 8
  %5 = alloca %struct.ccw1*, align 8
  %6 = alloca i32, align 4
  store %struct.virtio_ccw_device* %0, %struct.virtio_ccw_device** %3, align 8
  %7 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %8 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.virtio_rev_info* @ccw_device_dma_zalloc(i32 %9, i32 48)
  %11 = bitcast %struct.virtio_rev_info* %10 to %struct.ccw1*
  store %struct.ccw1* %11, %struct.ccw1** %5, align 8
  %12 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %13 = icmp ne %struct.ccw1* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %96

17:                                               ; preds = %1
  %18 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.virtio_rev_info* @ccw_device_dma_zalloc(i32 %20, i32 48)
  store %struct.virtio_rev_info* %21, %struct.virtio_rev_info** %4, align 8
  %22 = load %struct.virtio_rev_info*, %struct.virtio_rev_info** %4, align 8
  %23 = icmp ne %struct.virtio_rev_info* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %26 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %29 = bitcast %struct.ccw1* %28 to %struct.virtio_rev_info*
  %30 = call i32 @ccw_device_dma_free(i32 %27, %struct.virtio_rev_info* %29, i32 48)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %96

33:                                               ; preds = %17
  %34 = load i32, i32* @CCW_CMD_SET_VIRTIO_REV, align 4
  %35 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %36 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %38 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %40 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %39, i32 0, i32 0
  store i32 48, i32* %40, align 8
  %41 = load %struct.virtio_rev_info*, %struct.virtio_rev_info** %4, align 8
  %42 = ptrtoint %struct.virtio_rev_info* %41 to i64
  %43 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %44 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* @VIRTIO_CCW_REV_MAX, align 8
  %46 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %47 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %78, %33
  %49 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %50 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.virtio_rev_info*, %struct.virtio_rev_info** %4, align 8
  %53 = getelementptr inbounds %struct.virtio_rev_info, %struct.virtio_rev_info* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.virtio_rev_info*, %struct.virtio_rev_info** %4, align 8
  %55 = getelementptr inbounds %struct.virtio_rev_info, %struct.virtio_rev_info* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %57 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %58 = bitcast %struct.ccw1* %57 to %struct.virtio_rev_info*
  %59 = load i32, i32* @VIRTIO_CCW_DOING_SET_VIRTIO_REV, align 4
  %60 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %56, %struct.virtio_rev_info* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %48
  %66 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %67 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %76

71:                                               ; preds = %65
  %72 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %73 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %71, %70
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %48, label %83

83:                                               ; preds = %78
  %84 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %85 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %88 = bitcast %struct.ccw1* %87 to %struct.virtio_rev_info*
  %89 = call i32 @ccw_device_dma_free(i32 %86, %struct.virtio_rev_info* %88, i32 48)
  %90 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %3, align 8
  %91 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.virtio_rev_info*, %struct.virtio_rev_info** %4, align 8
  %94 = call i32 @ccw_device_dma_free(i32 %92, %struct.virtio_rev_info* %93, i32 48)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %83, %24, %14
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.virtio_rev_info* @ccw_device_dma_zalloc(i32, i32) #1

declare dso_local i32 @ccw_device_dma_free(i32, %struct.virtio_rev_info*, i32) #1

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.virtio_rev_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
