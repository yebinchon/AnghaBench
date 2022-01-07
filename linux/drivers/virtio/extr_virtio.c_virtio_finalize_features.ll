; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_virtio_finalize_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_virtio_finalize_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 (%struct.virtio_device*)* }

@VIRTIO_F_VERSION_1 = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_S_FEATURES_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"virtio: device refuses features: %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virtio_finalize_features(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %6 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %7 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.virtio_device*)**
  %11 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %10, align 8
  %12 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %13 = call i32 %11(%struct.virtio_device* %12)
  store i32 %13, i32* %4, align 4
  %14 = call i32 (...) @might_sleep()
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %21 = load i32, i32* @VIRTIO_F_VERSION_1, align 4
  %22 = call i32 @virtio_has_feature(%struct.virtio_device* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %48

25:                                               ; preds = %19
  %26 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %27 = load i32, i32* @VIRTIO_CONFIG_S_FEATURES_OK, align 4
  %28 = call i32 @virtio_add_status(%struct.virtio_device* %26, i32 %27)
  %29 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %30 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %32, align 8
  %34 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %35 = call i32 %33(%struct.virtio_device* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @VIRTIO_CONFIG_S_FEATURES_OK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %25
  %41 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %42 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %40, %24, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local i32 @virtio_add_status(%struct.virtio_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
