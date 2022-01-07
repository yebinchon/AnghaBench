; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_queue_carrier_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_queue_carrier_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32, %struct.xenvif* }
%struct.xenvif = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Guest Rx stalled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*)* @xenvif_queue_carrier_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_queue_carrier_off(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  %3 = alloca %struct.xenvif*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  %4 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %5 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %4, i32 0, i32 1
  %6 = load %struct.xenvif*, %struct.xenvif** %5, align 8
  store %struct.xenvif* %6, %struct.xenvif** %3, align 8
  %7 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %8 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %10 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %13 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %19 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netdev_info(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %23 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_carrier_off(i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.xenvif*, %struct.xenvif** %3, align 8
  %28 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
