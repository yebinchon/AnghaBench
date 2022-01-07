; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_submit_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_submit_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_tcp_ctrl = type { %struct.TYPE_6__, %struct.nvme_tcp_queue* }
%struct.TYPE_6__ = type { i64, i32*, i64, i32, %struct.nvme_tcp_cmd_pdu* }
%struct.nvme_tcp_cmd_pdu = type { %struct.TYPE_4__, %struct.nvme_command }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.nvme_command = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.nvme_tcp_queue = type { i64 }

@nvme_tcp_cmd = common dso_local global i32 0, align 4
@NVME_TCP_F_HDGST = common dso_local global i32 0, align 4
@nvme_admin_async_event = common dso_local global i32 0, align 4
@NVME_AQ_BLK_MQ_DEPTH = common dso_local global i32 0, align 4
@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@NVME_TCP_SEND_CMD_PDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_tcp_submit_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_submit_async_event(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca %struct.nvme_tcp_ctrl*, align 8
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca %struct.nvme_tcp_cmd_pdu*, align 8
  %6 = alloca %struct.nvme_command*, align 8
  %7 = alloca i64, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %8 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %9 = call %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl* %8)
  store %struct.nvme_tcp_ctrl* %9, %struct.nvme_tcp_ctrl** %3, align 8
  %10 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %10, i32 0, i32 1
  %12 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %11, align 8
  %13 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %12, i64 0
  store %struct.nvme_tcp_queue* %13, %struct.nvme_tcp_queue** %4, align 8
  %14 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %16, align 8
  store %struct.nvme_tcp_cmd_pdu* %17, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %18 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %19 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %18, i32 0, i32 1
  store %struct.nvme_command* %19, %struct.nvme_command** %6, align 8
  %20 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %21 = call i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue* %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %23 = call i32 @memset(%struct.nvme_tcp_cmd_pdu* %22, i32 0, i32 28)
  %24 = load i32, i32* @nvme_tcp_cmd, align 4
  %25 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %26 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load i32, i32* @NVME_TCP_F_HDGST, align 4
  %34 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %35 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %41 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 28, i32* %42, align 4
  %43 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %44 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %7, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @cpu_to_le32(i64 %49)
  %51 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %5, align 8
  %52 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @nvme_admin_async_event, align 4
  %55 = load %struct.nvme_command*, %struct.nvme_command** %6, align 8
  %56 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @NVME_AQ_BLK_MQ_DEPTH, align 4
  %59 = load %struct.nvme_command*, %struct.nvme_command** %6, align 8
  %60 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %63 = load %struct.nvme_command*, %struct.nvme_command** %6, align 8
  %64 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load %struct.nvme_command*, %struct.nvme_command** %6, align 8
  %69 = call i32 @nvme_tcp_set_sg_null(%struct.nvme_command* %68)
  %70 = load i32, i32* @NVME_TCP_SEND_CMD_PDU, align 4
  %71 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %72 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 8
  %74 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %75 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %78 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %81 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %3, align 8
  %84 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %83, i32 0, i32 0
  %85 = call i32 @nvme_tcp_queue_request(%struct.TYPE_6__* %84)
  ret void
}

declare dso_local %struct.nvme_tcp_ctrl* @to_tcp_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @memset(%struct.nvme_tcp_cmd_pdu*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @nvme_tcp_set_sg_null(%struct.nvme_command*) #1

declare dso_local i32 @nvme_tcp_queue_request(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
