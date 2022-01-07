; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_do_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_do_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pcibk_device = type { i32, %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Attaching to frontend resources - gnt_ref=%d evtchn=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Error mapping other domain page in ours.\00", align 1
@xen_pcibk_handle_event = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Error binding event channel to IRQ\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Attached!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_pcibk_device*, i32, i32)* @xen_pcibk_do_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_pcibk_do_attach(%struct.xen_pcibk_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xen_pcibk_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %10 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %17 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @xenbus_map_ring_valloc(%struct.TYPE_3__* %18, i32* %5, i32 1, i8** %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %24 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @xenbus_dev_fatal(%struct.TYPE_3__* %25, i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %59

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %31 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %33 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @xen_pcibk_handle_event, align 4
  %39 = load i32, i32* @DRV_NAME, align 4
  %40 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %41 = call i32 @bind_interdomain_evtchn_to_irqhandler(i32 %36, i32 %37, i32 %38, i32 0, i32 %39, %struct.xen_pcibk_device* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %46 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @xenbus_dev_fatal(%struct.TYPE_3__* %47, i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %59

50:                                               ; preds = %28
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %53 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %7, align 4
  %54 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %4, align 8
  %55 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %50, %44, %22
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @xenbus_map_ring_valloc(%struct.TYPE_3__*, i32*, i32, i8**) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i32 @bind_interdomain_evtchn_to_irqhandler(i32, i32, i32, i32, i32, %struct.xen_pcibk_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
