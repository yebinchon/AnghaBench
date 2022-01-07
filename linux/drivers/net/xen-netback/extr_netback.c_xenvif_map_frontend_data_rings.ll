; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_map_frontend_data_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_map_frontend_data_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32, i32, i32 }
%struct.xen_netif_tx_sring = type { i32 }
%struct.xen_netif_rx_sring = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenvif_map_frontend_data_rings(%struct.xenvif_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenvif_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xen_netif_tx_sring*, align 8
  %10 = alloca %struct.xen_netif_rx_sring*, align 8
  %11 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %15 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xenvif_to_xenbus_device(i32 %16)
  %18 = call i32 @xenbus_map_ring_valloc(i32 %17, i32* %6, i32 1, i8** %8)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %47

22:                                               ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.xen_netif_tx_sring*
  store %struct.xen_netif_tx_sring* %24, %struct.xen_netif_tx_sring** %9, align 8
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %26 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %25, i32 0, i32 2
  %27 = load %struct.xen_netif_tx_sring*, %struct.xen_netif_tx_sring** %9, align 8
  %28 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %29 = call i32 @BACK_RING_INIT(i32* %26, %struct.xen_netif_tx_sring* %27, i32 %28)
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %31 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xenvif_to_xenbus_device(i32 %32)
  %34 = call i32 @xenbus_map_ring_valloc(i32 %33, i32* %7, i32 1, i8** %8)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %47

38:                                               ; preds = %22
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to %struct.xen_netif_rx_sring*
  store %struct.xen_netif_rx_sring* %40, %struct.xen_netif_rx_sring** %10, align 8
  %41 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %42 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %41, i32 0, i32 0
  %43 = load %struct.xen_netif_rx_sring*, %struct.xen_netif_rx_sring** %10, align 8
  %44 = bitcast %struct.xen_netif_rx_sring* %43 to %struct.xen_netif_tx_sring*
  %45 = load i32, i32* @XEN_PAGE_SIZE, align 4
  %46 = call i32 @BACK_RING_INIT(i32* %42, %struct.xen_netif_tx_sring* %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %51

47:                                               ; preds = %37, %21
  %48 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %49 = call i32 @xenvif_unmap_frontend_data_rings(%struct.xenvif_queue* %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @xenbus_map_ring_valloc(i32, i32*, i32, i8**) #1

declare dso_local i32 @xenvif_to_xenbus_device(i32) #1

declare dso_local i32 @BACK_RING_INIT(i32*, %struct.xen_netif_tx_sring*, i32) #1

declare dso_local i32 @xenvif_unmap_frontend_data_rings(%struct.xenvif_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
