; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_unmap_frontend_data_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_unmap_frontend_data_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_unmap_frontend_data_rings(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  %3 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %4 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %10 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @xenvif_to_xenbus_device(i32 %11)
  %13 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %14 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @xenbus_unmap_ring_vfree(i32 %12, i64 %16)
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %20 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %26 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @xenvif_to_xenbus_device(i32 %27)
  %29 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %30 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @xenbus_unmap_ring_vfree(i32 %28, i64 %32)
  br label %34

34:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @xenbus_unmap_ring_vfree(i32, i64) #1

declare dso_local i32 @xenvif_to_xenbus_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
