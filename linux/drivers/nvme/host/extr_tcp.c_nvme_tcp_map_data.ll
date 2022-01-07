; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_map_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { i32 }
%struct.request = type { i32 }
%struct.nvme_tcp_request = type { i64, %struct.nvme_tcp_cmd_pdu* }
%struct.nvme_tcp_cmd_pdu = type { %struct.nvme_command }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*, %struct.request*)* @nvme_tcp_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_map_data(%struct.nvme_tcp_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.nvme_tcp_request*, align 8
  %6 = alloca %struct.nvme_tcp_cmd_pdu*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = call %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request* %8)
  store %struct.nvme_tcp_request* %9, %struct.nvme_tcp_request** %5, align 8
  %10 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %5, align 8
  %11 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %10, i32 0, i32 1
  %12 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %11, align 8
  store %struct.nvme_tcp_cmd_pdu* %12, %struct.nvme_tcp_cmd_pdu** %6, align 8
  %13 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %13, i32 0, i32 0
  store %struct.nvme_command* %14, %struct.nvme_command** %7, align 8
  %15 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %16 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %17 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = call i64 @rq_data_dir(%struct.request* %21)
  %23 = load i64, i64* @WRITE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %35 = call i64 @nvme_tcp_inline_data_size(%struct.nvme_tcp_queue* %34)
  %36 = icmp sle i64 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %39 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %40 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %5, align 8
  %41 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @nvme_tcp_set_sg_inline(%struct.nvme_tcp_queue* %38, %struct.nvme_command* %39, i64 %42)
  br label %50

44:                                               ; preds = %30, %25, %2
  %45 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %46 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %5, align 8
  %47 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @nvme_tcp_set_sg_host_data(%struct.nvme_command* %45, i64 %48)
  br label %50

50:                                               ; preds = %44, %37
  ret i32 0
}

declare dso_local %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @nvme_tcp_inline_data_size(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @nvme_tcp_set_sg_inline(%struct.nvme_tcp_queue*, %struct.nvme_command*, i64) #1

declare dso_local i32 @nvme_tcp_set_sg_host_data(%struct.nvme_command*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
