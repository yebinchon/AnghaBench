; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_register_adapter_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_virtio_ccw_register_adapter_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_ccw_device = type { %struct.TYPE_3__*, %struct.airq_info* }
%struct.TYPE_3__ = type { i32 }
%struct.airq_info = type { i32 }
%struct.virtqueue = type { i32 }
%struct.ccw1 = type { i32, i64, i32, i32 }
%struct.virtio_thinint_area = type { i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@VIRTIO_AIRQ_ISC = common dso_local global i32 0, align 4
@CCW_CMD_SET_IND_ADAPTER = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@VIRTIO_CCW_DOING_SET_IND_ADAPTER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@virtio_ccw_use_airq = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Adapter interrupts unsupported on host\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"enabling adapter interrupts = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_ccw_device*, %struct.virtqueue**, i32, %struct.ccw1*)* @virtio_ccw_register_adapter_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtio_ccw_register_adapter_ind(%struct.virtio_ccw_device* %0, %struct.virtqueue** %1, i32 %2, %struct.ccw1* %3) #0 {
  %5 = alloca %struct.virtio_ccw_device*, align 8
  %6 = alloca %struct.virtqueue**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.virtio_thinint_area*, align 8
  %11 = alloca %struct.airq_info*, align 8
  store %struct.virtio_ccw_device* %0, %struct.virtio_ccw_device** %5, align 8
  store %struct.virtqueue** %1, %struct.virtqueue*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ccw1* %3, %struct.ccw1** %8, align 8
  store %struct.virtio_thinint_area* null, %struct.virtio_thinint_area** %10, align 8
  %12 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %13 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = call %struct.virtio_thinint_area* @ccw_device_dma_zalloc(%struct.TYPE_3__* %14, i32 24)
  store %struct.virtio_thinint_area* %15, %struct.virtio_thinint_area** %10, align 8
  %16 = load %struct.virtio_thinint_area*, %struct.virtio_thinint_area** %10, align 8
  %17 = icmp ne %struct.virtio_thinint_area* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %85

21:                                               ; preds = %4
  %22 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.virtio_thinint_area*, %struct.virtio_thinint_area** %10, align 8
  %25 = getelementptr inbounds %struct.virtio_thinint_area, %struct.virtio_thinint_area* %24, i32 0, i32 3
  %26 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %27 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %26, i32 0, i32 1
  %28 = call i32 @get_airq_indicator(%struct.virtqueue** %22, i32 %23, i32* %25, %struct.airq_info** %27)
  %29 = load %struct.virtio_thinint_area*, %struct.virtio_thinint_area** %10, align 8
  %30 = getelementptr inbounds %struct.virtio_thinint_area, %struct.virtio_thinint_area* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.virtio_thinint_area*, %struct.virtio_thinint_area** %10, align 8
  %32 = getelementptr inbounds %struct.virtio_thinint_area, %struct.virtio_thinint_area* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %85

38:                                               ; preds = %21
  %39 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %40 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %39, i32 0, i32 1
  %41 = load %struct.airq_info*, %struct.airq_info** %40, align 8
  store %struct.airq_info* %41, %struct.airq_info** %11, align 8
  %42 = load %struct.airq_info*, %struct.airq_info** %11, align 8
  %43 = call i64 @get_summary_indicator(%struct.airq_info* %42)
  %44 = load %struct.virtio_thinint_area*, %struct.virtio_thinint_area** %10, align 8
  %45 = getelementptr inbounds %struct.virtio_thinint_area, %struct.virtio_thinint_area* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @VIRTIO_AIRQ_ISC, align 4
  %47 = load %struct.virtio_thinint_area*, %struct.virtio_thinint_area** %10, align 8
  %48 = getelementptr inbounds %struct.virtio_thinint_area, %struct.virtio_thinint_area* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @CCW_CMD_SET_IND_ADAPTER, align 4
  %50 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %51 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @CCW_FLAG_SLI, align 4
  %53 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %54 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %56 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %55, i32 0, i32 0
  store i32 24, i32* %56, align 8
  %57 = load %struct.virtio_thinint_area*, %struct.virtio_thinint_area** %10, align 8
  %58 = ptrtoint %struct.virtio_thinint_area* %57 to i64
  %59 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %60 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %62 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %63 = load i32, i32* @VIRTIO_CCW_DOING_SET_IND_ADAPTER, align 4
  %64 = call i32 @ccw_io_helper(%struct.virtio_ccw_device* %61, %struct.ccw1* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %38
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  store i64 0, i64* @virtio_ccw_use_airq, align 8
  %73 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %81

74:                                               ; preds = %67
  %75 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %76 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_warn(i32* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %74, %72
  %82 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %83 = call i32 @virtio_ccw_drop_indicators(%struct.virtio_ccw_device* %82)
  br label %84

84:                                               ; preds = %81, %38
  br label %85

85:                                               ; preds = %84, %35, %18
  %86 = load %struct.virtio_ccw_device*, %struct.virtio_ccw_device** %5, align 8
  %87 = getelementptr inbounds %struct.virtio_ccw_device, %struct.virtio_ccw_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load %struct.virtio_thinint_area*, %struct.virtio_thinint_area** %10, align 8
  %90 = call i32 @ccw_device_dma_free(%struct.TYPE_3__* %88, %struct.virtio_thinint_area* %89, i32 24)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local %struct.virtio_thinint_area* @ccw_device_dma_zalloc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @get_airq_indicator(%struct.virtqueue**, i32, i32*, %struct.airq_info**) #1

declare dso_local i64 @get_summary_indicator(%struct.airq_info*) #1

declare dso_local i32 @ccw_io_helper(%struct.virtio_ccw_device*, %struct.ccw1*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @virtio_ccw_drop_indicators(%struct.virtio_ccw_device*) #1

declare dso_local i32 @ccw_device_dma_free(%struct.TYPE_3__*, %struct.virtio_thinint_area*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
