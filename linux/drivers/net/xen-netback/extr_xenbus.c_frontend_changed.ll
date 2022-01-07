; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_frontend_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_frontend_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.backend_info = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@XenbusStateInitWait = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"saw state %d at frontend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @frontend_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.backend_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 0
  %8 = call %struct.backend_info* @dev_get_drvdata(i32* %7)
  store %struct.backend_info* %8, %struct.backend_info** %5, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @xenbus_strstate(i32 %12)
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.backend_info*, %struct.backend_info** %5, align 8
  %17 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %44 [
    i32 129, label %19
    i32 130, label %23
    i32 131, label %24
    i32 132, label %27
    i32 133, label %30
    i32 128, label %38
  ]

19:                                               ; preds = %2
  %20 = load %struct.backend_info*, %struct.backend_info** %5, align 8
  %21 = load i32, i32* @XenbusStateInitWait, align 4
  %22 = call i32 @set_backend_state(%struct.backend_info* %20, i32 %21)
  br label %50

23:                                               ; preds = %2
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.backend_info*, %struct.backend_info** %5, align 8
  %26 = call i32 @set_backend_state(%struct.backend_info* %25, i32 131)
  br label %50

27:                                               ; preds = %2
  %28 = load %struct.backend_info*, %struct.backend_info** %5, align 8
  %29 = call i32 @set_backend_state(%struct.backend_info* %28, i32 132)
  br label %50

30:                                               ; preds = %2
  %31 = load %struct.backend_info*, %struct.backend_info** %5, align 8
  %32 = call i32 @set_backend_state(%struct.backend_info* %31, i32 133)
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %34 = call i32 @xenbus_dev_is_online(%struct.xenbus_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %50

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %2, %37
  %39 = load %struct.backend_info*, %struct.backend_info** %5, align 8
  %40 = call i32 @set_backend_state(%struct.backend_info* %39, i32 133)
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %42 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %41, i32 0, i32 0
  %43 = call i32 @device_unregister(i32* %42)
  br label %50

44:                                               ; preds = %2
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %45, i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %38, %36, %27, %24, %23, %19
  ret void
}

declare dso_local %struct.backend_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @xenbus_strstate(i32) #1

declare dso_local i32 @set_backend_state(%struct.backend_info*, i32) #1

declare dso_local i32 @xenbus_dev_is_online(%struct.xenbus_device*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
