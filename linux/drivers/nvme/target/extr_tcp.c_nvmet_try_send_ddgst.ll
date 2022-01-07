; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_try_send_ddgst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_try_send_ddgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_cmd = type { i32, %struct.nvmet_tcp_queue*, i32 }
%struct.nvmet_tcp_queue = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.msghdr = type { i32 }
%struct.kvec = type { i32, i32* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@NVME_TCP_DIGEST_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_tcp_cmd*)* @nvmet_try_send_ddgst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_try_send_ddgst(%struct.nvmet_tcp_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_tcp_cmd*, align 8
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca %struct.msghdr, align 4
  %6 = alloca %struct.kvec, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_tcp_cmd* %0, %struct.nvmet_tcp_cmd** %3, align 8
  %8 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %8, i32 0, i32 1
  %10 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %9, align 8
  store %struct.nvmet_tcp_queue* %10, %struct.nvmet_tcp_queue** %4, align 8
  %11 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  %12 = load i32, i32* @MSG_DONTWAIT, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 0
  %14 = load i32, i32* @NVME_TCP_DIGEST_LENGTH, align 4
  %15 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %13, align 8
  %19 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 1
  %20 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %20, i32 0, i32 2
  %22 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %23 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  store i32* %26, i32** %19, align 8
  %27 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %28 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kernel_sendmsg(i32 %29, %struct.msghdr* %5, %struct.kvec* %6, i32 1, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %62

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %47 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %52, i32 0, i32 1
  %54 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %53, align 8
  %55 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %57 = call i32 @nvmet_tcp_put_cmd(%struct.nvmet_tcp_cmd* %56)
  br label %61

58:                                               ; preds = %40
  %59 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %3, align 8
  %60 = call i32 @nvmet_setup_response_pdu(%struct.nvmet_tcp_cmd* %59)
  br label %61

61:                                               ; preds = %58, %51
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @kernel_sendmsg(i32, %struct.msghdr*, %struct.kvec*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvmet_tcp_put_cmd(%struct.nvmet_tcp_cmd*) #1

declare dso_local i32 @nvmet_setup_response_pdu(%struct.nvmet_tcp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
