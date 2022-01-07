; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_async_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_alloc_async_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_ctrl = type { %struct.nvme_tcp_queue*, %struct.nvme_tcp_request }
%struct.nvme_tcp_queue = type { i32 }
%struct.nvme_tcp_request = type { %struct.nvme_tcp_queue*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_ctrl*)* @nvme_tcp_alloc_async_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_alloc_async_req(%struct.nvme_tcp_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_tcp_ctrl*, align 8
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca %struct.nvme_tcp_request*, align 8
  %6 = alloca i64, align 8
  store %struct.nvme_tcp_ctrl* %0, %struct.nvme_tcp_ctrl** %3, align 8
  %7 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %7, i32 0, i32 0
  %9 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %8, align 8
  %10 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %9, i64 0
  store %struct.nvme_tcp_queue* %10, %struct.nvme_tcp_queue** %4, align 8
  %11 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %11, i32 0, i32 1
  store %struct.nvme_tcp_request* %12, %struct.nvme_tcp_request** %5, align 8
  %13 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %14 = call i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue* %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = add i64 4, %17
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load i32, i32* @__GFP_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @page_frag_alloc(i32* %16, i64 %18, i32 %21)
  %23 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %1
  %33 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %34 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %33, i32 0, i32 0
  %35 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %34, align 8
  %36 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %35, i64 0
  %37 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %5, align 8
  %38 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %37, i32 0, i32 0
  store %struct.nvme_tcp_queue* %36, %struct.nvme_tcp_queue** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @page_frag_alloc(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
