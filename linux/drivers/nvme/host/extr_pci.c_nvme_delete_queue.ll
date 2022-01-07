; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_delete_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_delete_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_queue = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.request = type { %struct.nvme_queue*, i32 }
%struct.nvme_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@NVME_QID_ANY = common dso_local global i32 0, align 4
@ADMIN_TIMEOUT = common dso_local global i32 0, align 4
@nvme_admin_delete_cq = common dso_local global i64 0, align 8
@nvme_del_cq_end = common dso_local global i32 0, align 4
@nvme_del_queue_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_queue*, i64)* @nvme_delete_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_delete_queue(%struct.nvme_queue* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.nvme_command, align 8
  store %struct.nvme_queue* %0, %struct.nvme_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %10 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %6, align 8
  %15 = call i32 @memset(%struct.nvme_command* %8, i32 0, i32 16)
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %26 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  %27 = load i32, i32* @NVME_QID_ANY, align 4
  %28 = call %struct.request* @nvme_alloc_request(%struct.request_queue* %25, %struct.nvme_command* %8, i32 %26, i32 %27)
  store %struct.request* %28, %struct.request** %7, align 8
  %29 = load %struct.request*, %struct.request** %7, align 8
  %30 = call i64 @IS_ERR(%struct.request* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.request*, %struct.request** %7, align 8
  %34 = call i32 @PTR_ERR(%struct.request* %33)
  store i32 %34, i32* %3, align 4
  br label %57

35:                                               ; preds = %2
  %36 = load i32, i32* @ADMIN_TIMEOUT, align 4
  %37 = load %struct.request*, %struct.request** %7, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %40 = load %struct.request*, %struct.request** %7, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  store %struct.nvme_queue* %39, %struct.nvme_queue** %41, align 8
  %42 = load %struct.nvme_queue*, %struct.nvme_queue** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %42, i32 0, i32 0
  %44 = call i32 @init_completion(i32* %43)
  %45 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %46 = load %struct.request*, %struct.request** %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @nvme_admin_delete_cq, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* @nvme_del_cq_end, align 4
  br label %54

52:                                               ; preds = %35
  %53 = load i32, i32* @nvme_del_queue_end, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @blk_execute_rq_nowait(%struct.request_queue* %45, i32* null, %struct.request* %46, i32 0, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %32
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.request* @nvme_alloc_request(%struct.request_queue*, %struct.nvme_command*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @blk_execute_rq_nowait(%struct.request_queue*, i32*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
