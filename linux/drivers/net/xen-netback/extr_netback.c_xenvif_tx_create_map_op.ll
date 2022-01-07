; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_create_map_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_create_map_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, %struct.gnttab_map_grant_ref*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xen_netif_tx_request = type { i32 }
%struct.gnttab_map_grant_ref = type { i32 }

@GNTMAP_host_map = common dso_local global i32 0, align 4
@GNTMAP_readonly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*, i64, %struct.xen_netif_tx_request*, i32, %struct.gnttab_map_grant_ref*)* @xenvif_tx_create_map_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_tx_create_map_op(%struct.xenvif_queue* %0, i64 %1, %struct.xen_netif_tx_request* %2, i32 %3, %struct.gnttab_map_grant_ref* %4) #0 {
  %6 = alloca %struct.xenvif_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xen_netif_tx_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gnttab_map_grant_ref*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.xen_netif_tx_request* %2, %struct.xen_netif_tx_request** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.gnttab_map_grant_ref* %4, %struct.gnttab_map_grant_ref** %10, align 8
  %11 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %12 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %18 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %10, align 8
  %21 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %22 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %21, i32 0, i32 3
  %23 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %22, align 8
  %24 = ptrtoint %struct.gnttab_map_grant_ref* %20 to i64
  %25 = ptrtoint %struct.gnttab_map_grant_ref* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = getelementptr inbounds i32, i32* %19, i64 %27
  store i32 %16, i32* %28, align 4
  %29 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %10, align 8
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @idx_to_kaddr(%struct.xenvif_queue* %30, i64 %31)
  %33 = load i32, i32* @GNTMAP_host_map, align 4
  %34 = load i32, i32* @GNTMAP_readonly, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %37 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %40 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gnttab_set_map_op(%struct.gnttab_map_grant_ref* %29, i32 %32, i32 %35, i32 %38, i32 %43)
  %45 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %46 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %52 = call i32 @memcpy(i32* %50, %struct.xen_netif_tx_request* %51, i32 4)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.xenvif_queue*, %struct.xenvif_queue** %6, align 8
  %55 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 4
  ret void
}

declare dso_local i32 @gnttab_set_map_op(%struct.gnttab_map_grant_ref*, i32, i32, i32, i32) #1

declare dso_local i32 @idx_to_kaddr(%struct.xenvif_queue*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.xen_netif_tx_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
