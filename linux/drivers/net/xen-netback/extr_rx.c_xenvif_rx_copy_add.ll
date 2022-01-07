; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_copy_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_copy_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i64, i32*, %struct.gnttab_copy* }
%struct.gnttab_copy = type { i64, %struct.TYPE_12__, %struct.TYPE_9__, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.xen_netif_rx_request = type { i32 }
%struct.page = type { i32 }
%struct.xen_page_foreign = type { i32, i32 }

@COPY_BATCH_SIZE = common dso_local global i64 0, align 8
@GNTCOPY_dest_gref = common dso_local global i32 0, align 4
@GNTCOPY_source_gref = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*, %struct.xen_netif_rx_request*, i32, i8*, i64)* @xenvif_rx_copy_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_rx_copy_add(%struct.xenvif_queue* %0, %struct.xen_netif_rx_request* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.xenvif_queue*, align 8
  %7 = alloca %struct.xen_netif_rx_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gnttab_copy*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.xen_page_foreign*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %6, align 8
  store %struct.xen_netif_rx_request* %1, %struct.xen_netif_rx_request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %15 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @COPY_BATCH_SIZE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %22 = call i32 @xenvif_rx_copy_flush(%struct.xenvif_queue* %21)
  br label %23

23:                                               ; preds = %20, %5
  %24 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %25 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.gnttab_copy*, %struct.gnttab_copy** %26, align 8
  %28 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %29 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %27, i64 %31
  store %struct.gnttab_copy* %32, %struct.gnttab_copy** %11, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call %struct.page* @virt_to_page(i8* %33)
  store %struct.page* %34, %struct.page** %12, align 8
  %35 = load i32, i32* @GNTCOPY_dest_gref, align 4
  %36 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %37 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.page*, %struct.page** %12, align 8
  %39 = call %struct.xen_page_foreign* @xen_page_foreign(%struct.page* %38)
  store %struct.xen_page_foreign* %39, %struct.xen_page_foreign** %13, align 8
  %40 = load %struct.xen_page_foreign*, %struct.xen_page_foreign** %13, align 8
  %41 = icmp ne %struct.xen_page_foreign* %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %23
  %43 = load %struct.xen_page_foreign*, %struct.xen_page_foreign** %13, align 8
  %44 = getelementptr inbounds %struct.xen_page_foreign, %struct.xen_page_foreign* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %47 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.xen_page_foreign*, %struct.xen_page_foreign** %13, align 8
  %50 = getelementptr inbounds %struct.xen_page_foreign, %struct.xen_page_foreign* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %53 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @GNTCOPY_source_gref, align 4
  %57 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %58 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %72

61:                                               ; preds = %23
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @virt_to_gfn(i8* %62)
  %64 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %65 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* @DOMID_SELF, align 4
  %69 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %70 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %42
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @xen_offset_in_page(i8* %73)
  %75 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %76 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.xen_netif_rx_request*, %struct.xen_netif_rx_request** %7, align 8
  %79 = getelementptr inbounds %struct.xen_netif_rx_request, %struct.xen_netif_rx_request* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %82 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %86 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %85, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %91 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %95 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.gnttab_copy*, %struct.gnttab_copy** %11, align 8
  %99 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %101 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %105 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %109 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  store i32 %103, i32* %112, align 4
  %113 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %114 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  ret void
}

declare dso_local i32 @xenvif_rx_copy_flush(%struct.xenvif_queue*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local %struct.xen_page_foreign* @xen_page_foreign(%struct.page*) #1

declare dso_local i32 @virt_to_gfn(i8*) #1

declare dso_local i32 @xen_offset_in_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
