; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.virtproc_info* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32)*, i32 (%struct.virtio_device*)* }
%struct.virtproc_info = type { i64, i64, i32, i32, i32, i32, i64 }

@rpmsg_remove_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't remove rpmsg device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @rpmsg_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpmsg_remove(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtproc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %6 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %7 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %6, i32 0, i32 2
  %8 = load %struct.virtproc_info*, %struct.virtproc_info** %7, align 8
  store %struct.virtproc_info* %8, %struct.virtproc_info** %3, align 8
  %9 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %10 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %13 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = mul i64 %11, %14
  store i64 %15, i64* %4, align 8
  %16 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %17 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %19, align 8
  %21 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %22 = call i32 %20(%struct.virtio_device* %21)
  %23 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %24 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %23, i32 0, i32 0
  %25 = load i32, i32* @rpmsg_remove_device, align 4
  %26 = call i32 @device_for_each_child(%struct.TYPE_5__* %24, i32* null, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %31 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_warn(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %36 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %41 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %42 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @__rpmsg_destroy_ept(%struct.virtproc_info* %40, i64 %43)
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %47 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %46, i32 0, i32 5
  %48 = call i32 @idr_destroy(i32* %47)
  %49 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %50 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %55 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  %58 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %59 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %64 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %67 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dma_free_coherent(i32 %61, i64 %62, i32 %65, i32 %68)
  %70 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %71 = call i32 @kfree(%struct.virtproc_info* %70)
  ret void
}

declare dso_local i32 @device_for_each_child(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @__rpmsg_destroy_ept(%struct.virtproc_info*, i64) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.virtproc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
