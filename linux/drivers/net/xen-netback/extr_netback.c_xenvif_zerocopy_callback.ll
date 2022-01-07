; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_zerocopy_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_zerocopy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubuf_info = type { i64, i32 }
%struct.xenvif_queue = type { i64, i64, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_PENDING_REQS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xenvif_zerocopy_callback(%struct.ubuf_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubuf_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xenvif_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.ubuf_info* %0, %struct.ubuf_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ubuf_info*, %struct.ubuf_info** %3, align 8
  %10 = call %struct.xenvif_queue* @ubuf_to_queue(%struct.ubuf_info* %9)
  store %struct.xenvif_queue* %10, %struct.xenvif_queue** %7, align 8
  %11 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %12 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %11, i32 0, i32 3
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  br label %15

15:                                               ; preds = %49, %2
  %16 = load %struct.ubuf_info*, %struct.ubuf_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ubuf_info*, %struct.ubuf_info** %3, align 8
  %20 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ubuf_info*
  store %struct.ubuf_info* %22, %struct.ubuf_info** %3, align 8
  %23 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %24 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %27 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = load i64, i64* @MAX_PENDING_REQS, align 8
  %31 = icmp sge i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %35 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @pending_index(i64 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %40 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = call i32 (...) @smp_wmb()
  %45 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %46 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %15
  %50 = load %struct.ubuf_info*, %struct.ubuf_info** %3, align 8
  %51 = icmp ne %struct.ubuf_info* %50, null
  br i1 %51, label %15, label %52

52:                                               ; preds = %49
  %53 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %54 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %53, i32 0, i32 3
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %62 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %72

66:                                               ; preds = %52
  %67 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %68 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.xenvif_queue*, %struct.xenvif_queue** %7, align 8
  %74 = call i32 @xenvif_skb_zerocopy_complete(%struct.xenvif_queue* %73)
  ret void
}

declare dso_local %struct.xenvif_queue* @ubuf_to_queue(%struct.ubuf_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pending_index(i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xenvif_skb_zerocopy_complete(%struct.xenvif_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
