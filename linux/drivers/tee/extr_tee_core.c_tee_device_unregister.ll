; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_device = type { i32, %struct.TYPE_3__, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TEE_DEVICE_FLAG_REGISTERED = common dso_local global i32 0, align 4
@tee_dev_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tee_device_unregister(%struct.tee_device* %0) #0 {
  %2 = alloca %struct.tee_device*, align 8
  store %struct.tee_device* %0, %struct.tee_device** %2, align 8
  %3 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %4 = icmp ne %struct.tee_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %8 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TEE_DEVICE_FLAG_REGISTERED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %15 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @sysfs_remove_group(i32* %16, i32* @tee_dev_group)
  %18 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %19 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %18, i32 0, i32 4
  %20 = call i32 @cdev_del(i32* %19)
  %21 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %22 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %21, i32 0, i32 1
  %23 = call i32 @device_del(%struct.TYPE_3__* %22)
  br label %24

24:                                               ; preds = %13, %6
  %25 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %26 = call i32 @tee_device_put(%struct.tee_device* %25)
  %27 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %28 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %27, i32 0, i32 3
  %29 = call i32 @wait_for_completion(i32* %28)
  %30 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %31 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.tee_device*, %struct.tee_device** %2, align 8
  %33 = getelementptr inbounds %struct.tee_device, %struct.tee_device* %32, i32 0, i32 1
  %34 = call i32 @put_device(%struct.TYPE_3__* %33)
  br label %35

35:                                               ; preds = %24, %5
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @device_del(%struct.TYPE_3__*) #1

declare dso_local i32 @tee_device_put(%struct.tee_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
