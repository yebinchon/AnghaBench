; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xen-pciback/extr_xenbus.c_xen_pcibk_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pcibk_device = type { i64, i32, i32*, i32, i32 }

@INVALID_EVTCHN_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_pcibk_device*)* @xen_pcibk_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_pcibk_disconnect(%struct.xen_pcibk_device* %0) #0 {
  %2 = alloca %struct.xen_pcibk_device*, align 8
  store %struct.xen_pcibk_device* %0, %struct.xen_pcibk_device** %2, align 8
  %3 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %4 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %7 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @INVALID_EVTCHN_IRQ, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %13 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %16 = call i32 @unbind_from_irqhandler(i64 %14, %struct.xen_pcibk_device* %15)
  %17 = load i64, i64* @INVALID_EVTCHN_IRQ, align 8
  %18 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %19 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %22 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %21, i32 0, i32 4
  %23 = call i32 @flush_work(i32* %22)
  %24 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %25 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %30 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %33 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @xenbus_unmap_ring_vfree(i32 %31, i32* %34)
  %36 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %37 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %28, %20
  %39 = load %struct.xen_pcibk_device*, %struct.xen_pcibk_device** %2, align 8
  %40 = getelementptr inbounds %struct.xen_pcibk_device, %struct.xen_pcibk_device* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unbind_from_irqhandler(i64, %struct.xen_pcibk_device*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @xenbus_unmap_ring_vfree(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
