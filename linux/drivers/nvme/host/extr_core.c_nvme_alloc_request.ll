; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.request_queue = type { i32 }
%struct.nvme_command = type { i32 }
%struct.TYPE_2__ = type { %struct.nvme_command* }

@REQ_OP_DRV_OUT = common dso_local global i32 0, align 4
@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@NVME_QID_ANY = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @nvme_alloc_request(%struct.request_queue* %0, %struct.nvme_command* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %13 = call i64 @nvme_is_write(%struct.nvme_command* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @REQ_OP_DRV_OUT, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @REQ_OP_DRV_IN, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NVME_QID_ANY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.request* @blk_mq_alloc_request(%struct.request_queue* %25, i32 %26, i32 %27)
  store %struct.request* %28, %struct.request** %11, align 8
  br label %42

29:                                               ; preds = %19
  %30 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  %41 = call %struct.request* @blk_mq_alloc_request_hctx(%struct.request_queue* %30, i32 %31, i32 %32, i32 %40)
  store %struct.request* %41, %struct.request** %11, align 8
  br label %42

42:                                               ; preds = %39, %24
  %43 = load %struct.request*, %struct.request** %11, align 8
  %44 = call i64 @IS_ERR(%struct.request* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.request*, %struct.request** %11, align 8
  store %struct.request* %47, %struct.request** %5, align 8
  br label %61

48:                                               ; preds = %42
  %49 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %50 = load %struct.request*, %struct.request** %11, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.request*, %struct.request** %11, align 8
  %55 = call i32 @nvme_clear_nvme_request(%struct.request* %54)
  %56 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %57 = load %struct.request*, %struct.request** %11, align 8
  %58 = call %struct.TYPE_2__* @nvme_req(%struct.request* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.nvme_command* %56, %struct.nvme_command** %59, align 8
  %60 = load %struct.request*, %struct.request** %11, align 8
  store %struct.request* %60, %struct.request** %5, align 8
  br label %61

61:                                               ; preds = %48, %46
  %62 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %62
}

declare dso_local i64 @nvme_is_write(%struct.nvme_command*) #1

declare dso_local %struct.request* @blk_mq_alloc_request(%struct.request_queue*, i32, i32) #1

declare dso_local %struct.request* @blk_mq_alloc_request_hctx(%struct.request_queue*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @nvme_clear_nvme_request(%struct.request*) #1

declare dso_local %struct.TYPE_2__* @nvme_req(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
