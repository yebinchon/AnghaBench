; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_rx_new_call.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_rxrpc.c_afs_rx_new_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rxrpc_call = type { i32 }
%struct.afs_net = type { i32 }

@afs_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rxrpc_call*, i64)* @afs_rx_new_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_rx_new_call(%struct.sock* %0, %struct.rxrpc_call* %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.rxrpc_call*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.afs_net*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.rxrpc_call* %1, %struct.rxrpc_call** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.afs_net* @afs_sock2net(%struct.sock* %8)
  store %struct.afs_net* %9, %struct.afs_net** %7, align 8
  %10 = load i32, i32* @afs_wq, align 4
  %11 = load %struct.afs_net*, %struct.afs_net** %7, align 8
  %12 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %11, i32 0, i32 0
  %13 = call i32 @queue_work(i32 %10, i32* %12)
  ret void
}

declare dso_local %struct.afs_net* @afs_sock2net(%struct.sock*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
