; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_pvcalls_back_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }

@XenbusStateInitWait = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"saw state %d at frontend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @pvcalls_back_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvcalls_back_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %33 [
    i32 129, label %6
    i32 130, label %10
    i32 131, label %10
    i32 132, label %13
    i32 133, label %16
    i32 128, label %27
  ]

6:                                                ; preds = %2
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %8 = load i32, i32* @XenbusStateInitWait, align 4
  %9 = call i32 @set_backend_state(%struct.xenbus_device* %7, i32 %8)
  br label %39

10:                                               ; preds = %2, %2
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %12 = call i32 @set_backend_state(%struct.xenbus_device* %11, i32 131)
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %15 = call i32 @set_backend_state(%struct.xenbus_device* %14, i32 132)
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %18 = call i32 @set_backend_state(%struct.xenbus_device* %17, i32 133)
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %20 = call i32 @xenbus_dev_is_online(%struct.xenbus_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %39

23:                                               ; preds = %16
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %25 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %24, i32 0, i32 0
  %26 = call i32 @device_unregister(i32* %25)
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %29 = call i32 @set_backend_state(%struct.xenbus_device* %28, i32 133)
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %31 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %30, i32 0, i32 0
  %32 = call i32 @device_unregister(i32* %31)
  br label %39

33:                                               ; preds = %2
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %34, i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %27, %23, %22, %13, %10, %6
  ret void
}

declare dso_local i32 @set_backend_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xenbus_dev_is_online(%struct.xenbus_device*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
