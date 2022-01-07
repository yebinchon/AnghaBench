; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_idx_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_idx_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.gnttab_unmap_grant_ref = type { i32, i32, i32 }

@GNTMAP_host_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Unmap fail: ret: %d pending_idx: %d host_addr: %llx handle: 0x%x status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_idx_unmap(%struct.xenvif_queue* %0, i64 %1) #0 {
  %3 = alloca %struct.xenvif_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gnttab_unmap_grant_ref, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @idx_to_kaddr(%struct.xenvif_queue* %7, i64 %8)
  %10 = load i32, i32* @GNTMAP_host_map, align 4
  %11 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %12 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref* %6, i32 %9, i32 %10, i32 %16)
  %18 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @xenvif_grant_handle_reset(%struct.xenvif_queue* %18, i64 %19)
  %21 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %22 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref* %6, i32* null, i32* %25, i32 1)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %2
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %31 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netdev_err(i32 %34, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %36, i32 %38, i32 %40, i32 %42)
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @gnttab_set_unmap_op(%struct.gnttab_unmap_grant_ref*, i32, i32, i32) #1

declare dso_local i32 @idx_to_kaddr(%struct.xenvif_queue*, i64) #1

declare dso_local i32 @xenvif_grant_handle_reset(%struct.xenvif_queue*, i64) #1

declare dso_local i32 @gnttab_unmap_refs(%struct.gnttab_unmap_grant_ref*, i32*, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
