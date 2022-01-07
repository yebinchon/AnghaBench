; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_register_virtio_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio.c_register_virtio_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { {}* }

@virtio_bus = common dso_local global i32 0, align 4
@virtio_index_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"virtio%u\00", align 1
@VIRTIO_CONFIG_S_ACKNOWLEDGE = common dso_local global i32 0, align 4
@VIRTIO_CONFIG_S_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_virtio_device(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32* @virtio_bus, i32** %6, align 8
  %7 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %8 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %7, i32 0, i32 3
  %9 = call i32 @device_initialize(%struct.TYPE_6__* %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @ida_simple_get(i32* @virtio_index_ida, i32 0, i32 0, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %57

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %18 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %20 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %19, i32 0, i32 3
  %21 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %22 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_set_name(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %26 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %25, i32 0, i32 6
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %29 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %31 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %33 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %32, i32 0, i32 5
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.virtio_device*)**
  %37 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %36, align 8
  %38 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %39 = call i32 %37(%struct.virtio_device* %38)
  %40 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %41 = load i32, i32* @VIRTIO_CONFIG_S_ACKNOWLEDGE, align 4
  %42 = call i32 @virtio_add_status(%struct.virtio_device* %40, i32 %41)
  %43 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %44 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %43, i32 0, i32 4
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %47 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %46, i32 0, i32 3
  %48 = call i32 @device_add(%struct.TYPE_6__* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %15
  %52 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %53 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ida_simple_remove(i32* @virtio_index_ida, i32 %54)
  br label %56

56:                                               ; preds = %51, %15
  br label %57

57:                                               ; preds = %56, %14
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %62 = load i32, i32* @VIRTIO_CONFIG_S_FAILED, align 4
  %63 = call i32 @virtio_add_status(%struct.virtio_device* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @virtio_add_status(%struct.virtio_device*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_add(%struct.TYPE_6__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
