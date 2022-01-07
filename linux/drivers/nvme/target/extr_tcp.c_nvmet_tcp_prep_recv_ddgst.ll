; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_prep_recv_ddgst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_prep_recv_ddgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_cmd = type { %struct.nvmet_tcp_queue* }
%struct.nvmet_tcp_queue = type { i32, i32, i64, i32 }

@NVME_TCP_DIGEST_LENGTH = common dso_local global i32 0, align 4
@NVMET_TCP_RECV_DDGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_cmd*)* @nvmet_tcp_prep_recv_ddgst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_prep_recv_ddgst(%struct.nvmet_tcp_cmd* %0) #0 {
  %2 = alloca %struct.nvmet_tcp_cmd*, align 8
  %3 = alloca %struct.nvmet_tcp_queue*, align 8
  store %struct.nvmet_tcp_cmd* %0, %struct.nvmet_tcp_cmd** %2, align 8
  %4 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %4, i32 0, i32 0
  %6 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %5, align 8
  store %struct.nvmet_tcp_queue* %6, %struct.nvmet_tcp_queue** %3, align 8
  %7 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %8 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %11 = call i32 @nvmet_tcp_ddgst(i32 %9, %struct.nvmet_tcp_cmd* %10)
  %12 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %13 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @NVME_TCP_DIGEST_LENGTH, align 4
  %15 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %16 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @NVMET_TCP_RECV_DDGST, align 4
  %18 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %3, align 8
  %19 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  ret void
}

declare dso_local i32 @nvmet_tcp_ddgst(i32, %struct.nvmet_tcp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
