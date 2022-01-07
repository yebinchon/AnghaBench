; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_handle_req_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_tcp.c_nvmet_tcp_handle_req_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_tcp_queue = type { i32, i32 }
%struct.nvmet_tcp_cmd = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.nvmet_req = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"queue %d: failed to map data\0A\00", align 1
@NVMET_TCP_RECV_DATA = common dso_local global i32 0, align 4
@NVMET_TCP_F_INIT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_tcp_queue*, %struct.nvmet_tcp_cmd*, %struct.nvmet_req*)* @nvmet_tcp_handle_req_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_tcp_handle_req_failure(%struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_cmd* %1, %struct.nvmet_req* %2) #0 {
  %4 = alloca %struct.nvmet_tcp_queue*, align 8
  %5 = alloca %struct.nvmet_tcp_cmd*, align 8
  %6 = alloca %struct.nvmet_req*, align 8
  %7 = alloca i32, align 4
  store %struct.nvmet_tcp_queue* %0, %struct.nvmet_tcp_queue** %4, align 8
  store %struct.nvmet_tcp_cmd* %1, %struct.nvmet_tcp_cmd** %5, align 8
  store %struct.nvmet_req* %2, %struct.nvmet_req** %6, align 8
  %8 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %9 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %8, i32 0, i32 1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le32_to_cpu(i32 %15)
  %17 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %18 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nvme_is_write(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load %struct.nvmet_req*, %struct.nvmet_req** %6, align 8
  %27 = getelementptr inbounds %struct.nvmet_req, %struct.nvmet_req* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25, %3
  %37 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %38 = call i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue* %37)
  br label %63

39:                                               ; preds = %25
  %40 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %41 = call i32 @nvmet_tcp_map_data(%struct.nvmet_tcp_cmd* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %47 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %51 = call i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue* %50)
  br label %63

52:                                               ; preds = %39
  %53 = load i32, i32* @NVMET_TCP_RECV_DATA, align 4
  %54 = load %struct.nvmet_tcp_queue*, %struct.nvmet_tcp_queue** %4, align 8
  %55 = getelementptr inbounds %struct.nvmet_tcp_queue, %struct.nvmet_tcp_queue* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %57 = call i32 @nvmet_tcp_map_pdu_iovec(%struct.nvmet_tcp_cmd* %56)
  %58 = load i32, i32* @NVMET_TCP_F_INIT_FAILED, align 4
  %59 = load %struct.nvmet_tcp_cmd*, %struct.nvmet_tcp_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.nvmet_tcp_cmd, %struct.nvmet_tcp_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %52, %45, %36
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @nvme_is_write(i32) #1

declare dso_local i32 @nvmet_prepare_receive_pdu(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @nvmet_tcp_map_data(%struct.nvmet_tcp_cmd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @nvmet_tcp_fatal_error(%struct.nvmet_tcp_queue*) #1

declare dso_local i32 @nvmet_tcp_map_pdu_iovec(%struct.nvmet_tcp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
