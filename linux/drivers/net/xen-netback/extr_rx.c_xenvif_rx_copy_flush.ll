; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_copy_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_rx_copy_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, %struct.gnttab_copy* }
%struct.gnttab_copy = type { i64 }
%struct.xen_netif_rx_response = type { i64 }

@GNTST_okay = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*)* @xenvif_rx_copy_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_rx_copy_flush(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gnttab_copy*, align 8
  %6 = alloca %struct.xen_netif_rx_response*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  %7 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %8 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load %struct.gnttab_copy*, %struct.gnttab_copy** %9, align 8
  %11 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %12 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @gnttab_batch_copy(%struct.gnttab_copy* %10, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %57, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %19 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %16
  %24 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %25 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load %struct.gnttab_copy*, %struct.gnttab_copy** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %27, i64 %29
  store %struct.gnttab_copy* %30, %struct.gnttab_copy** %5, align 8
  %31 = load %struct.gnttab_copy*, %struct.gnttab_copy** %5, align 8
  %32 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GNTST_okay, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %23
  %40 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %41 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %40, i32 0, i32 2
  %42 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %43 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.xen_netif_rx_response* @RING_GET_RESPONSE(i32* %41, i32 %49)
  store %struct.xen_netif_rx_response* %50, %struct.xen_netif_rx_response** %6, align 8
  %51 = load %struct.gnttab_copy*, %struct.gnttab_copy** %5, align 8
  %52 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %6, align 8
  %55 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %39, %23
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %62 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %65 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %64, i32 0, i32 2
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(i32* %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %72 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @notify_remote_via_irq(i32 %73)
  br label %75

75:                                               ; preds = %70, %60
  %76 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %77 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @__skb_queue_purge(i32 %79)
  ret void
}

declare dso_local i32 @gnttab_batch_copy(%struct.gnttab_copy*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xen_netif_rx_response* @RING_GET_RESPONSE(i32*, i32) #1

declare dso_local i32 @RING_PUSH_RESPONSES_AND_CHECK_NOTIFY(i32*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @__skb_queue_purge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
