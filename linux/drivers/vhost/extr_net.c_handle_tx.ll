; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_handle_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32, %struct.vhost_net_virtqueue* }
%struct.vhost_net_virtqueue = type { %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i32, %struct.socket* }
%struct.socket = type { i32 }

@VHOST_NET_VQ_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*)* @handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tx(%struct.vhost_net* %0) #0 {
  %2 = alloca %struct.vhost_net*, align 8
  %3 = alloca %struct.vhost_net_virtqueue*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  %5 = alloca %struct.socket*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %2, align 8
  %6 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %7 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %6, i32 0, i32 1
  %8 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %7, align 8
  %9 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %10 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %8, i64 %9
  store %struct.vhost_net_virtqueue* %10, %struct.vhost_net_virtqueue** %3, align 8
  %11 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %3, align 8
  %12 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %11, i32 0, i32 0
  store %struct.vhost_virtqueue* %12, %struct.vhost_virtqueue** %4, align 8
  %13 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %14 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %13, i32 0, i32 0
  %15 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %16 = call i32 @mutex_lock_nested(i32* %14, i64 %15)
  %17 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %17, i32 0, i32 1
  %19 = load %struct.socket*, %struct.socket** %18, align 8
  store %struct.socket* %19, %struct.socket** %5, align 8
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = icmp ne %struct.socket* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %25 = call i32 @vq_meta_prefetch(%struct.vhost_virtqueue* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %48

28:                                               ; preds = %23
  %29 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %30 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %29, i32 0, i32 0
  %31 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %32 = call i32 @vhost_disable_notify(i32* %30, %struct.vhost_virtqueue* %31)
  %33 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %34 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %35 = call i32 @vhost_net_disable_vq(%struct.vhost_net* %33, %struct.vhost_virtqueue* %34)
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = call i64 @vhost_sock_zcopy(%struct.socket* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = call i32 @handle_tx_zerocopy(%struct.vhost_net* %40, %struct.socket* %41)
  br label %47

43:                                               ; preds = %28
  %44 = load %struct.vhost_net*, %struct.vhost_net** %2, align 8
  %45 = load %struct.socket*, %struct.socket** %5, align 8
  %46 = call i32 @handle_tx_copy(%struct.vhost_net* %44, %struct.socket* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %27, %22
  %49 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %50 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  ret void
}

declare dso_local i32 @mutex_lock_nested(i32*, i64) #1

declare dso_local i32 @vq_meta_prefetch(%struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_disable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_net_disable_vq(%struct.vhost_net*, %struct.vhost_virtqueue*) #1

declare dso_local i64 @vhost_sock_zcopy(%struct.socket*) #1

declare dso_local i32 @handle_tx_zerocopy(%struct.vhost_net*, %struct.socket*) #1

declare dso_local i32 @handle_tx_copy(%struct.vhost_net*, %struct.socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
