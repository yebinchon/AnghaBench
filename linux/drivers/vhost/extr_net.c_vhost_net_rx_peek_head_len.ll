; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_rx_peek_head_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_rx_peek_head_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { %struct.vhost_net_virtqueue* }
%struct.vhost_net_virtqueue = type { %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i64 }
%struct.sock = type { i32 }

@VHOST_NET_VQ_RX = common dso_local global i64 0, align 8
@VHOST_NET_VQ_TX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_net*, %struct.sock*, i32*)* @vhost_net_rx_peek_head_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_net_rx_peek_head_len(%struct.vhost_net* %0, %struct.sock* %1, i32* %2) #0 {
  %4 = alloca %struct.vhost_net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vhost_net_virtqueue*, align 8
  %8 = alloca %struct.vhost_net_virtqueue*, align 8
  %9 = alloca %struct.vhost_virtqueue*, align 8
  %10 = alloca %struct.vhost_virtqueue*, align 8
  %11 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %13 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %12, i32 0, i32 0
  %14 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %13, align 8
  %15 = load i64, i64* @VHOST_NET_VQ_RX, align 8
  %16 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %14, i64 %15
  store %struct.vhost_net_virtqueue* %16, %struct.vhost_net_virtqueue** %7, align 8
  %17 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %17, i32 0, i32 0
  %19 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %18, align 8
  %20 = load i64, i64* @VHOST_NET_VQ_TX, align 8
  %21 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %19, i64 %20
  store %struct.vhost_net_virtqueue* %21, %struct.vhost_net_virtqueue** %8, align 8
  %22 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %7, align 8
  %23 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %22, i32 0, i32 0
  store %struct.vhost_virtqueue* %23, %struct.vhost_virtqueue** %9, align 8
  %24 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %8, align 8
  %25 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %24, i32 0, i32 0
  store %struct.vhost_virtqueue* %25, %struct.vhost_virtqueue** %10, align 8
  %26 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %7, align 8
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = call i32 @peek_head_len(%struct.vhost_net_virtqueue* %26, %struct.sock* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %3
  %32 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %33 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %7, align 8
  %38 = call i32 @vhost_net_signal_used(%struct.vhost_net_virtqueue* %37)
  %39 = load %struct.vhost_net*, %struct.vhost_net** %4, align 8
  %40 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %9, align 8
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %10, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @vhost_net_busy_poll(%struct.vhost_net* %39, %struct.vhost_virtqueue* %40, %struct.vhost_virtqueue* %41, i32* %42, i32 1)
  %44 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %7, align 8
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = call i32 @peek_head_len(%struct.vhost_net_virtqueue* %44, %struct.sock* %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %36, %31, %3
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @peek_head_len(%struct.vhost_net_virtqueue*, %struct.sock*) #1

declare dso_local i32 @vhost_net_signal_used(%struct.vhost_net_virtqueue*) #1

declare dso_local i32 @vhost_net_busy_poll(%struct.vhost_net*, %struct.vhost_virtqueue*, %struct.vhost_virtqueue*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
