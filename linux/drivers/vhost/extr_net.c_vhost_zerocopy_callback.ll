; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_zerocopy_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_zerocopy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubuf_info = type { i64, %struct.vhost_net_ubuf_ref* }
%struct.vhost_net_ubuf_ref = type { %struct.vhost_virtqueue* }
%struct.vhost_virtqueue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VHOST_DMA_DONE_LEN = common dso_local global i32 0, align 4
@VHOST_DMA_FAILED_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubuf_info*, i32)* @vhost_zerocopy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_zerocopy_callback(%struct.ubuf_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubuf_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhost_net_ubuf_ref*, align 8
  %6 = alloca %struct.vhost_virtqueue*, align 8
  %7 = alloca i32, align 4
  store %struct.ubuf_info* %0, %struct.ubuf_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ubuf_info*, %struct.ubuf_info** %3, align 8
  %9 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %8, i32 0, i32 1
  %10 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %9, align 8
  store %struct.vhost_net_ubuf_ref* %10, %struct.vhost_net_ubuf_ref** %5, align 8
  %11 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %5, align 8
  %12 = getelementptr inbounds %struct.vhost_net_ubuf_ref, %struct.vhost_net_ubuf_ref* %11, i32 0, i32 0
  %13 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %12, align 8
  store %struct.vhost_virtqueue* %13, %struct.vhost_virtqueue** %6, align 8
  %14 = call i32 (...) @rcu_read_lock_bh()
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VHOST_DMA_DONE_LEN, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @VHOST_DMA_FAILED_LEN, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %24 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.ubuf_info*, %struct.ubuf_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubuf_info, %struct.ubuf_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %22, i32* %30, align 4
  %31 = load %struct.vhost_net_ubuf_ref*, %struct.vhost_net_ubuf_ref** %5, align 8
  %32 = call i32 @vhost_net_ubuf_put(%struct.vhost_net_ubuf_ref* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = srem i32 %36, 16
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %21
  %40 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %41 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %40, i32 0, i32 0
  %42 = call i32 @vhost_poll_queue(i32* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = call i32 (...) @rcu_read_unlock_bh()
  ret void
}

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i32 @vhost_net_ubuf_put(%struct.vhost_net_ubuf_ref*) #1

declare dso_local i32 @vhost_poll_queue(i32*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
