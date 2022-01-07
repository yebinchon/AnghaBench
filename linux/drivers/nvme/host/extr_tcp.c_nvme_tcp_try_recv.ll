; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { i64, %struct.socket* }
%struct.socket = type { %struct.TYPE_6__*, %struct.sock* }
%struct.TYPE_6__ = type { i32 (%struct.sock*, %struct.TYPE_7__*, i32)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvme_tcp_queue* }
%struct.sock = type { i32 }

@nvme_tcp_recv_skb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*)* @nvme_tcp_try_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_try_recv(%struct.nvme_tcp_queue* %0) #0 {
  %2 = alloca %struct.nvme_tcp_queue*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %2, align 8
  %7 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %2, align 8
  %8 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %7, i32 0, i32 1
  %9 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %9, %struct.socket** %3, align 8
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 1
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %4, align 8
  %13 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.nvme_tcp_queue* %13, %struct.nvme_tcp_queue** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %2, align 8
  %20 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sock*, %struct.TYPE_7__*, i32)*, i32 (%struct.sock*, %struct.TYPE_7__*, i32)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load i32, i32* @nvme_tcp_recv_skb, align 4
  %28 = call i32 %25(%struct.sock* %26, %struct.TYPE_7__* %5, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @release_sock(%struct.sock* %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
