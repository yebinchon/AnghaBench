; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.nvme_tcp_request = type { %struct.TYPE_8__*, %struct.nvme_tcp_cmd_pdu* }
%struct.TYPE_8__ = type { %struct.nvme_tcp_ctrl* }
%struct.nvme_tcp_ctrl = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.nvme_tcp_cmd_pdu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NVME_CTRL_RESETTING = common dso_local global i64 0, align 8
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"queue %d: timeout request %#x type %d\0A\00", align 1
@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@BLK_EH_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"starting error recovery\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32)* @nvme_tcp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_timeout(%struct.request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_tcp_request*, align 8
  %7 = alloca %struct.nvme_tcp_ctrl*, align 8
  %8 = alloca %struct.nvme_tcp_cmd_pdu*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request* %9)
  store %struct.nvme_tcp_request* %10, %struct.nvme_tcp_request** %6, align 8
  %11 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %12 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %14, align 8
  store %struct.nvme_tcp_ctrl* %15, %struct.nvme_tcp_ctrl** %7, align 8
  %16 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %17 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %16, i32 0, i32 1
  %18 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %17, align 8
  store %struct.nvme_tcp_cmd_pdu* %18, %struct.nvme_tcp_cmd_pdu** %8, align 8
  %19 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %7, align 8
  %20 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NVME_CTRL_RESETTING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %7, align 8
  %29 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %33 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @nvme_tcp_queue_id(%struct.TYPE_8__* %34)
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nvme_tcp_cmd_pdu*, %struct.nvme_tcp_cmd_pdu** %8, align 8
  %40 = getelementptr inbounds %struct.nvme_tcp_cmd_pdu, %struct.nvme_tcp_cmd_pdu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @dev_warn(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %42)
  %44 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %7, align 8
  %45 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %27
  %51 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %7, align 8
  %52 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %51, i32 0, i32 1
  %53 = call i32 @flush_work(i32* %52)
  %54 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %7, align 8
  %55 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %54, i32 0, i32 0
  %56 = call i32 @nvme_tcp_teardown_io_queues(%struct.TYPE_7__* %55, i32 0)
  %57 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %7, align 8
  %58 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %57, i32 0, i32 0
  %59 = call i32 @nvme_tcp_teardown_admin_queue(%struct.TYPE_7__* %58, i32 0)
  %60 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %60, i32* %3, align 4
  br label %71

61:                                               ; preds = %27
  %62 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %7, align 8
  %63 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, ...) @dev_warn(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %7, align 8
  %68 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %67, i32 0, i32 0
  %69 = call i32 @nvme_tcp_error_recovery(%struct.TYPE_7__* %68)
  %70 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %61, %50, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @nvme_tcp_queue_id(%struct.TYPE_8__*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @nvme_tcp_teardown_io_queues(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @nvme_tcp_teardown_admin_queue(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @nvme_tcp_error_recovery(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
