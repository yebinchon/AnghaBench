; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_finalize_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_mmio.c_vm_finalize_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32, i32 }
%struct.virtio_mmio_device = type { i32, i64 }

@VIRTIO_F_VERSION_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"New virtio-mmio devices (version 2) must provide VIRTIO_F_VERSION_1 feature!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIRTIO_MMIO_DRIVER_FEATURES_SEL = common dso_local global i64 0, align 8
@VIRTIO_MMIO_DRIVER_FEATURES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @vm_finalize_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_finalize_features(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca %struct.virtio_mmio_device*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %5 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %6 = call %struct.virtio_mmio_device* @to_virtio_mmio_device(%struct.virtio_device* %5)
  store %struct.virtio_mmio_device* %6, %struct.virtio_mmio_device** %4, align 8
  %7 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %8 = call i32 @vring_transport_features(%struct.virtio_device* %7)
  %9 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %10 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %15 = load i32, i32* @VIRTIO_F_VERSION_1, align 4
  %16 = call i32 @__virtio_test_bit(%struct.virtio_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %20 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %19, i32 0, i32 1
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %13, %1
  %25 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %26 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VIRTIO_MMIO_DRIVER_FEATURES_SEL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 1, i64 %29)
  %31 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %32 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 32
  %35 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %36 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VIRTIO_MMIO_DRIVER_FEATURES, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %42 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VIRTIO_MMIO_DRIVER_FEATURES_SEL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %48 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.virtio_mmio_device*, %struct.virtio_mmio_device** %4, align 8
  %51 = getelementptr inbounds %struct.virtio_mmio_device, %struct.virtio_mmio_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VIRTIO_MMIO_DRIVER_FEATURES, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %24, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.virtio_mmio_device* @to_virtio_mmio_device(%struct.virtio_device*) #1

declare dso_local i32 @vring_transport_features(%struct.virtio_device*) #1

declare dso_local i32 @__virtio_test_bit(%struct.virtio_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
