; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_alloc_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_alloc_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pcibk_device = type { i32, i64, i32, i32*, i32, %struct.xenbus_device* }
%struct.xenbus_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"allocated pdev @ 0x%p\0A\00", align 1
@INVALID_EVTCHN_IRQ = common dso_local global i32 0, align 4
@xen_pcibk_do_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xen_pcibk_device* (%struct.xenbus_device*)* @alloc_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xen_pcibk_device* @alloc_pdev(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.xen_pcibk_device* @kzalloc(i32 48, i32 %4)
  store %struct.xen_pcibk_device* %5, %struct.xen_pcibk_device** %3, align 8
  %6 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %7 = icmp eq %struct.xen_pcibk_device* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 0
  %12 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %13 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.xen_pcibk_device* %12)
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %15 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %16 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %15, i32 0, i32 5
  store %struct.xenbus_device* %14, %struct.xenbus_device** %16, align 8
  %17 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %18 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %17, i32 0, i32 4
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %21 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @INVALID_EVTCHN_IRQ, align 4
  %23 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %24 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %26 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %28 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %27, i32 0, i32 0
  %29 = load i32, i32* @xen_pcibk_do_op, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %32 = call i64 @xen_pcibk_init_devices(%struct.xen_pcibk_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %9
  %35 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %36 = call i32 @kfree(%struct.xen_pcibk_device* %35)
  store %struct.xen_pcibk_device* null, %struct.xen_pcibk_device** %3, align 8
  br label %37

37:                                               ; preds = %34, %9
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %39 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 0
  %40 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  %41 = call i32 @dev_set_drvdata(i32* %39, %struct.xen_pcibk_device* %40)
  br label %42

42:                                               ; preds = %37, %8
  %43 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %3, align 8
  ret %struct.xen_pcibk_device* %43
}

declare dso_local %struct.xen_pcibk_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.xen_pcibk_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @xen_pcibk_init_devices(%struct.xen_pcibk_device*) #1

declare dso_local i32 @kfree(%struct.xen_pcibk_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.xen_pcibk_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
