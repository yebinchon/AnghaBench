; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_kthread_guest_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_kthread_guest_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i64, i32, %struct.xenvif* }
%struct.xenvif = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenvif_kthread_guest_rx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xenvif_queue*, align 8
  %4 = alloca %struct.xenvif*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.xenvif_queue*
  store %struct.xenvif_queue* %6, %struct.xenvif_queue** %3, align 8
  %7 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %8 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %7, i32 0, i32 2
  %9 = load %struct.xenvif*, %struct.xenvif** %8, align 8
  store %struct.xenvif* %9, %struct.xenvif** %4, align 8
  %10 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %11 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %16 = call i32 @xenvif_queue_carrier_on(%struct.xenvif_queue* %15)
  br label %17

17:                                               ; preds = %14, %1
  br label %18

18:                                               ; preds = %71, %17
  %19 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %20 = call i32 @xenvif_wait_for_rx_work(%struct.xenvif_queue* %19)
  %21 = call i64 (...) @kthread_should_stop()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %75

24:                                               ; preds = %18
  %25 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %26 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %31 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %41 = call i32 @xenvif_carrier_off(%struct.xenvif* %40)
  br label %75

42:                                               ; preds = %34
  %43 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %44 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %43, i32 0, i32 1
  %45 = call i32 @skb_queue_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %49 = call i32 @xenvif_rx_action(%struct.xenvif_queue* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %52 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %57 = call i64 @xenvif_rx_queue_stalled(%struct.xenvif_queue* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %61 = call i32 @xenvif_queue_carrier_off(%struct.xenvif_queue* %60)
  br label %70

62:                                               ; preds = %55
  %63 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %64 = call i64 @xenvif_rx_queue_ready(%struct.xenvif_queue* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %68 = call i32 @xenvif_queue_carrier_on(%struct.xenvif_queue* %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %59
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %73 = call i32 @xenvif_rx_queue_drop_expired(%struct.xenvif_queue* %72)
  %74 = call i32 (...) @cond_resched()
  br label %18

75:                                               ; preds = %39, %23
  %76 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %77 = call i32 @xenvif_rx_queue_purge(%struct.xenvif_queue* %76)
  ret i32 0
}

declare dso_local i32 @xenvif_queue_carrier_on(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_wait_for_rx_work(%struct.xenvif_queue*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xenvif_carrier_off(%struct.xenvif*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @xenvif_rx_action(%struct.xenvif_queue*) #1

declare dso_local i64 @xenvif_rx_queue_stalled(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_queue_carrier_off(%struct.xenvif_queue*) #1

declare dso_local i64 @xenvif_rx_queue_ready(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_rx_queue_drop_expired(%struct.xenvif_queue*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @xenvif_rx_queue_purge(%struct.xenvif_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
