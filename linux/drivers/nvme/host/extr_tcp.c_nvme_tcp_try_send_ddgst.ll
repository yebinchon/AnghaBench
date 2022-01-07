; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send_ddgst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_try_send_ddgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_request = type { i32, i32, %struct.nvme_tcp_queue* }
%struct.nvme_tcp_queue = type { i32 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i64, i32* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@NVME_TCP_DIGEST_LENGTH = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_request*)* @nvme_tcp_try_send_ddgst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_try_send_ddgst(%struct.nvme_tcp_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_tcp_request*, align 8
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msghdr, align 4
  %7 = alloca %struct.kvec, align 8
  store %struct.nvme_tcp_request* %0, %struct.nvme_tcp_request** %3, align 8
  %8 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %8, i32 0, i32 2
  %10 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %9, align 8
  store %struct.nvme_tcp_queue* %10, %struct.nvme_tcp_queue** %4, align 8
  %11 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %12 = load i32, i32* @MSG_DONTWAIT, align 4
  %13 = load i32, i32* @MSG_EOR, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %16 = load i64, i64* @NVME_TCP_DIGEST_LENGTH, align 8
  %17 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %18 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %16, %20
  store i64 %21, i64* %15, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 1
  %23 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %24 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %23, i32 0, i32 1
  %25 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32* %29, i32** %22, align 8
  %30 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %31 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @kernel_sendmsg(i32 %32, %struct.msghdr* %6, %struct.kvec* %7, i32 1, i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %63

43:                                               ; preds = %1
  %44 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @NVME_TCP_DIGEST_LENGTH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %54 = call i32 @nvme_tcp_done_send_req(%struct.nvme_tcp_queue* %53)
  store i32 1, i32* %2, align 4
  br label %63

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %3, align 8
  %58 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %52, %41
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvme_tcp_done_send_req(%struct.nvme_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
