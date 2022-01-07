; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_frontend_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_frontend_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xen_pcibk_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"fe state changed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"frontend is gone! unregister device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @xen_pcibk_frontend_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_pcibk_frontend_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 0
  %8 = call %struct.xen_pcibk_device* @dev_get_drvdata(i32* %7)
  store %struct.xen_pcibk_device* %8, %struct.xen_pcibk_device** %5, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %45 [
    i32 130, label %14
    i32 129, label %17
    i32 131, label %20
    i32 132, label %23
    i32 133, label %28
    i32 128, label %38
  ]

14:                                               ; preds = %2
  %15 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %5, align 8
  %16 = call i32 @xen_pcibk_attach(%struct.xen_pcibk_device* %15)
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %5, align 8
  %19 = call i32 @xen_pcibk_reconfigure(%struct.xen_pcibk_device* %18)
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %22 = call i32 @xenbus_switch_state(%struct.xenbus_device* %21, i32 131)
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %5, align 8
  %25 = call i32 @xen_pcibk_disconnect(%struct.xen_pcibk_device* %24)
  %26 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %27 = call i32 @xenbus_switch_state(%struct.xenbus_device* %26, i32 132)
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %5, align 8
  %30 = call i32 @xen_pcibk_disconnect(%struct.xen_pcibk_device* %29)
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %32 = call i32 @xenbus_switch_state(%struct.xenbus_device* %31, i32 133)
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %34 = call i32 @xenbus_dev_is_online(%struct.xenbus_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %46

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %2, %37
  %39 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %40 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %43 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %42, i32 0, i32 0
  %44 = call i32 @device_unregister(i32* %43)
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %38, %36, %23, %20, %17, %14
  ret void
}

declare dso_local %struct.xen_pcibk_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @xen_pcibk_attach(%struct.xen_pcibk_device*) #1

declare dso_local i32 @xen_pcibk_reconfigure(%struct.xen_pcibk_device*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xen_pcibk_disconnect(%struct.xen_pcibk_device*) #1

declare dso_local i32 @xenbus_dev_is_online(%struct.xenbus_device*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
