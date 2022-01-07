; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_tx_batch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_tx_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32 }
%struct.vhost_net_virtqueue = type { i64, i32, i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.msghdr*, i32)* }
%struct.msghdr = type { %struct.tun_msg_ctl* }
%struct.tun_msg_ctl = type { i64, i32, i32 }

@TUN_MSG_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Fail to batch sending packets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*, %struct.vhost_net_virtqueue*, %struct.socket*, %struct.msghdr*)* @vhost_tx_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_tx_batch(%struct.vhost_net* %0, %struct.vhost_net_virtqueue* %1, %struct.socket* %2, %struct.msghdr* %3) #0 {
  %5 = alloca %struct.vhost_net*, align 8
  %6 = alloca %struct.vhost_net_virtqueue*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca %struct.tun_msg_ctl, align 8
  %10 = alloca i32, align 4
  store %struct.vhost_net* %0, %struct.vhost_net** %5, align 8
  store %struct.vhost_net_virtqueue* %1, %struct.vhost_net_virtqueue** %6, align 8
  store %struct.socket* %2, %struct.socket** %7, align 8
  store %struct.msghdr* %3, %struct.msghdr** %8, align 8
  %11 = getelementptr inbounds %struct.tun_msg_ctl, %struct.tun_msg_ctl* %9, i32 0, i32 0
  %12 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %6, align 8
  %13 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = getelementptr inbounds %struct.tun_msg_ctl, %struct.tun_msg_ctl* %9, i32 0, i32 1
  %16 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %6, align 8
  %17 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.tun_msg_ctl, %struct.tun_msg_ctl* %9, i32 0, i32 2
  %20 = load i32, i32* @TUN_MSG_PTR, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %6, align 8
  %22 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %47

26:                                               ; preds = %4
  %27 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %27, i32 0, i32 0
  store %struct.tun_msg_ctl* %9, %struct.tun_msg_ctl** %28, align 8
  %29 = load %struct.socket*, %struct.socket** %7, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.socket*, %struct.msghdr*, i32)*, i32 (%struct.socket*, %struct.msghdr*, i32)** %32, align 8
  %34 = load %struct.socket*, %struct.socket** %7, align 8
  %35 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %36 = call i32 %33(%struct.socket* %34, %struct.msghdr* %35, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %6, align 8
  %44 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %43, i32 0, i32 1
  %45 = call i32 @vq_err(i32* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %52

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %6, align 8
  %49 = call i32 @vhost_net_signal_used(%struct.vhost_net_virtqueue* %48)
  %50 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %6, align 8
  %51 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %47, %42
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vq_err(i32*, i8*) #1

declare dso_local i32 @vhost_net_signal_used(%struct.vhost_net_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
