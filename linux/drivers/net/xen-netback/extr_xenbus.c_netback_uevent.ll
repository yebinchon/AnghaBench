; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_netback_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_netback_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.backend_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"script=%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vif=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)* @netback_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netback_uevent(%struct.xenbus_device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.backend_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 0
  %9 = call %struct.backend_info* @dev_get_drvdata(i32* %8)
  store %struct.backend_info* %9, %struct.backend_info** %6, align 8
  %10 = load %struct.backend_info*, %struct.backend_info** %6, align 8
  %11 = icmp ne %struct.backend_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %15 = load %struct.backend_info*, %struct.backend_info** %6, align 8
  %16 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %13
  %24 = load %struct.backend_info*, %struct.backend_info** %6, align 8
  %25 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %39

29:                                               ; preds = %23
  %30 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %31 = load %struct.backend_info*, %struct.backend_info** %6, align 8
  %32 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %28, %20, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.backend_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
