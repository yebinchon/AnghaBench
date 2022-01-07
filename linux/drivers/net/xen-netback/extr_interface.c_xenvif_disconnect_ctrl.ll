; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_disconnect_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_interface.c_xenvif_disconnect_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_disconnect_ctrl(%struct.xenvif* %0) #0 {
  %2 = alloca %struct.xenvif*, align 8
  store %struct.xenvif* %0, %struct.xenvif** %2, align 8
  %3 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %4 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %9 = call i32 @xenvif_deinit_hash(%struct.xenvif* %8)
  %10 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %11 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %14 = call i32 @unbind_from_irqhandler(i64 %12, %struct.xenvif* %13)
  %15 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %16 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %19 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %25 = call i32 @xenvif_to_xenbus_device(%struct.xenvif* %24)
  %26 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %27 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @xenbus_unmap_ring_vfree(i32 %25, i32* %29)
  %31 = load %struct.xenvif*, %struct.xenvif** %2, align 8
  %32 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @xenvif_deinit_hash(%struct.xenvif*) #1

declare dso_local i32 @unbind_from_irqhandler(i64, %struct.xenvif*) #1

declare dso_local i32 @xenbus_unmap_ring_vfree(i32, i32*) #1

declare dso_local i32 @xenvif_to_xenbus_device(%struct.xenvif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
