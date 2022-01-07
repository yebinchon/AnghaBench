; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.xen_netif_tx_request = type { i32 }

@XEN_NETIF_RSP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*, %struct.xen_netif_tx_request*, i32, i64)* @xenvif_tx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_tx_err(%struct.xenvif_queue* %0, %struct.xen_netif_tx_request* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.xenvif_queue*, align 8
  %6 = alloca %struct.xen_netif_tx_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %5, align 8
  store %struct.xen_netif_tx_request* %1, %struct.xen_netif_tx_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %12 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %43, %4
  %16 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %17 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %16, i32 0, i32 1
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %21 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @XEN_NETIF_RSP_ERROR, align 4
  %24 = call i32 @make_tx_response(%struct.xenvif_queue* %20, %struct.xen_netif_tx_request* %21, i32 %22, i32 %23)
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %26 = call i32 @push_tx_responses(%struct.xenvif_queue* %25)
  %27 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %28 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %27, i32 0, i32 1
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %44

35:                                               ; preds = %15
  %36 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %37 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %9, align 8
  %40 = trunc i64 %38 to i32
  %41 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %6, align 8
  %42 = call i32 @RING_COPY_REQUEST(%struct.TYPE_2__* %37, i32 %40, %struct.xen_netif_tx_request* %41)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %35
  br i1 true, label %15, label %44

44:                                               ; preds = %43, %34
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %47 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @make_tx_response(%struct.xenvif_queue*, %struct.xen_netif_tx_request*, i32, i32) #1

declare dso_local i32 @push_tx_responses(%struct.xenvif_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @RING_COPY_REQUEST(%struct.TYPE_2__*, i32, %struct.xen_netif_tx_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
