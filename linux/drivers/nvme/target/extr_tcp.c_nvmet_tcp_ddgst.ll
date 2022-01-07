; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_ddgst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_ddgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.nvmet_tcp_cmd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, %struct.nvmet_tcp_cmd*)* @nvmet_tcp_ddgst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_ddgst(%struct.ahash_request* %0, %struct.nvmet_tcp_cmd* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.nvmet_tcp_cmd*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store %struct.nvmet_tcp_cmd* %1, %struct.nvmet_tcp_cmd** %4, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %6 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to i8*
  %13 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %5, i32 %9, i8* %12, i32 %16)
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = call i32 @crypto_ahash_digest(%struct.ahash_request* %18)
  ret void
}

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32, i8*, i32) #1

declare dso_local i32 @crypto_ahash_digest(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
