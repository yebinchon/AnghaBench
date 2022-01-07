; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_xenbus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_xenbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenbus_device_id = type { i32 }
%struct.xen_pcibk_device = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error allocating xen_pcibk_device struct\00", align 1
@XenbusStateInitWait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @xen_pcibk_xenbus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_xenbus_probe(%struct.xenbus_device* %0, %struct.xenbus_device_id* %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.xenbus_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store %struct.xenbus_device_id* %1, %struct.xenbus_device_id** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %8 = call %struct.xen_pcibk_device* @alloc_pdev(%struct.xenbus_device* %7)
  store %struct.xen_pcibk_device* %8, %struct.xen_pcibk_device** %6, align 8
  %9 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %10 = icmp eq %struct.xen_pcibk_device* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %14, i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %19 = load i32, i32* @XenbusStateInitWait, align 4
  %20 = call i32 @xenbus_switch_state(%struct.xenbus_device* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %41

24:                                               ; preds = %17
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %26 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %27 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %30 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %29, i32 0, i32 1
  %31 = call i32 @xenbus_watch_path(%struct.xenbus_device* %25, i32 %28, i32* %30, i32 (i32*, i32*, i32*)* @xen_pcibk_be_watch)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %37 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %6, align 8
  %39 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %38, i32 0, i32 1
  %40 = call i32 @xen_pcibk_be_watch(i32* %39, i32* null, i32* null)
  br label %41

41:                                               ; preds = %35, %34, %23, %11
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.xen_pcibk_device* @alloc_pdev(%struct.xenbus_device*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xenbus_watch_path(%struct.xenbus_device*, i32, i32*, i32 (i32*, i32*, i32*)*) #1

declare dso_local i32 @xen_pcibk_be_watch(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
