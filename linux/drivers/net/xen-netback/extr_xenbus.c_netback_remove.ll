; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_netback_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_netback_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.backend_info = type { %struct.backend_info*, i32* }

@XenbusStateClosed = common dso_local global i32 0, align 4
@KOBJ_OFFLINE = common dso_local global i32 0, align 4
@XBT_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hotplug-status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @netback_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netback_remove(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.backend_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %5 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %4, i32 0, i32 0
  %6 = call %struct.backend_info* @dev_get_drvdata(%struct.TYPE_3__* %5)
  store %struct.backend_info* %6, %struct.backend_info** %3, align 8
  %7 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %8 = load i32, i32* @XenbusStateClosed, align 4
  %9 = call i32 @set_backend_state(%struct.backend_info* %7, i32 %8)
  %10 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %11 = call i32 @unregister_hotplug_status_watch(%struct.backend_info* %10)
  %12 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %13 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %18 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* @KOBJ_OFFLINE, align 4
  %21 = call i32 @kobject_uevent(i32* %19, i32 %20)
  %22 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %23 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @xen_unregister_watchers(i32* %24)
  %26 = load i32, i32* @XBT_NIL, align 4
  %27 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %28 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xenbus_rm(i32 %26, i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %32 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @xenvif_free(i32* %33)
  %35 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %36 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %16, %1
  %38 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %39 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %38, i32 0, i32 0
  %40 = load %struct.backend_info*, %struct.backend_info** %39, align 8
  %41 = call i32 @kfree(%struct.backend_info* %40)
  %42 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %43 = call i32 @kfree(%struct.backend_info* %42)
  %44 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %45 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %44, i32 0, i32 0
  %46 = call i32 @dev_set_drvdata(%struct.TYPE_3__* %45, i32* null)
  ret i32 0
}

declare dso_local %struct.backend_info* @dev_get_drvdata(%struct.TYPE_3__*) #1

declare dso_local i32 @set_backend_state(%struct.backend_info*, i32) #1

declare dso_local i32 @unregister_hotplug_status_watch(%struct.backend_info*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @xen_unregister_watchers(i32*) #1

declare dso_local i32 @xenbus_rm(i32, i32, i8*) #1

declare dso_local i32 @xenvif_free(i32*) #1

declare dso_local i32 @kfree(%struct.backend_info*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
