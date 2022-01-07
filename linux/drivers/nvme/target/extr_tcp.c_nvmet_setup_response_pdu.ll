; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_setup_response_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_setup_response_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_cmd = type { %struct.nvmet_tcp_queue*, i32, i64, %struct.nvme_tcp_rsp_pdu* }
%struct.nvmet_tcp_queue = type { i32, i64 }
%struct.nvme_tcp_rsp_pdu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }

@NVMET_TCP_SEND_RESPONSE = common dso_local global i32 0, align 4
@nvme_tcp_rsp = common dso_local global i32 0, align 4
@NVME_TCP_F_HDGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_cmd*)* @nvmet_setup_response_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_setup_response_pdu(%struct.nvmet_tcp_cmd* %0) #0 {
  %2 = alloca %struct.nvmet_tcp_cmd*, align 8
  %3 = alloca %struct.nvme_tcp_rsp_pdu*, align 8
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca i64, align 8
  store %struct.nvmet_tcp_cmd* %0, %struct.nvmet_tcp_cmd** %2, align 8
  %6 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %6, i32 0, i32 3
  %8 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %7, align 8
  store %struct.nvme_tcp_rsp_pdu* %8, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %9 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %9, i32 0, i32 0
  %11 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %10, align 8
  store %struct.nvmet_tcp_queue* %11, %struct.nvmet_tcp_queue** %4, align 8
  %12 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %12, i32 0, i32 0
  %14 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %13, align 8
  %15 = call i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue* %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @NVMET_TCP_SEND_RESPONSE, align 4
  %19 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @nvme_tcp_rsp, align 4
  %22 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, %struct.nvme_tcp_rsp_pdu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 8
  %25 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, %struct.nvme_tcp_rsp_pdu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %29 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, %struct.nvme_tcp_rsp_pdu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, %struct.nvme_tcp_rsp_pdu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, %struct.nvme_tcp_rsp_pdu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @cpu_to_le32(i64 %40)
  %42 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, %struct.nvme_tcp_rsp_pdu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %45, i32 0, i32 0
  %47 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %46, align 8
  %48 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %1
  %52 = load i32, i32* @NVME_TCP_F_HDGST, align 4
  %53 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %54 = getelementptr inbounds %struct.nvme_tcp_rsp_pdu, %struct.nvme_tcp_rsp_pdu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %59 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nvme_tcp_rsp_pdu*, %struct.nvme_tcp_rsp_pdu** %3, align 8
  %62 = call i32 @nvmet_tcp_hdgst(i32 %60, %struct.nvme_tcp_rsp_pdu* %61, i32 32)
  br label %63

63:                                               ; preds = %51, %1
  ret void
}

declare dso_local i64 @nvmet_tcp_hdgst_len(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @nvmet_tcp_hdgst(i32, %struct.nvme_tcp_rsp_pdu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
