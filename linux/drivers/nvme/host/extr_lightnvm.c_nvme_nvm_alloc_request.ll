; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32 }
%struct.request_queue = type { %struct.nvme_ns* }
%struct.nvme_ns = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.nvme_nvm_command = type { i32 }
%struct.nvme_command = type { i32 }

@NVME_QID_ANY = common dso_local global i32 0, align 4
@REQ_FAILFAST_DRIVER = common dso_local global i32 0, align 4
@IOPRIO_CLASS_BE = common dso_local global i32 0, align 4
@IOPRIO_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request_queue*, %struct.nvm_rq*, %struct.nvme_nvm_command*)* @nvme_nvm_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @nvme_nvm_alloc_request(%struct.request_queue* %0, %struct.nvm_rq* %1, %struct.nvme_nvm_command* %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.nvm_rq*, align 8
  %7 = alloca %struct.nvme_nvm_command*, align 8
  %8 = alloca %struct.nvme_ns*, align 8
  %9 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %6, align 8
  store %struct.nvme_nvm_command* %2, %struct.nvme_nvm_command** %7, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 0
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %11, align 8
  store %struct.nvme_ns* %12, %struct.nvme_ns** %8, align 8
  %13 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %14 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %15 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %7, align 8
  %16 = call i32 @nvme_nvm_rqtocmd(%struct.nvm_rq* %13, %struct.nvme_ns* %14, %struct.nvme_nvm_command* %15)
  %17 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %18 = load %struct.nvme_nvm_command*, %struct.nvme_nvm_command** %7, align 8
  %19 = bitcast %struct.nvme_nvm_command* %18 to %struct.nvme_command*
  %20 = load i32, i32* @NVME_QID_ANY, align 4
  %21 = call %struct.request* @nvme_alloc_request(%struct.request_queue* %17, %struct.nvme_command* %19, i32 0, i32 %20)
  store %struct.request* %21, %struct.request** %9, align 8
  %22 = load %struct.request*, %struct.request** %9, align 8
  %23 = call i64 @IS_ERR(%struct.request* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load %struct.request*, %struct.request** %9, align 8
  store %struct.request* %26, %struct.request** %4, align 8
  br label %51

27:                                               ; preds = %3
  %28 = load i32, i32* @REQ_FAILFAST_DRIVER, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.request*, %struct.request** %9, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %35 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.request*, %struct.request** %9, align 8
  %40 = load %struct.nvm_rq*, %struct.nvm_rq** %6, align 8
  %41 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %40, i32 0, i32 0
  %42 = call i32 @blk_rq_append_bio(%struct.request* %39, i32* %41)
  br label %49

43:                                               ; preds = %27
  %44 = load i32, i32* @IOPRIO_CLASS_BE, align 4
  %45 = load i32, i32* @IOPRIO_NORM, align 4
  %46 = call i32 @IOPRIO_PRIO_VALUE(i32 %44, i32 %45)
  %47 = load %struct.request*, %struct.request** %9, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.request*, %struct.request** %9, align 8
  store %struct.request* %50, %struct.request** %4, align 8
  br label %51

51:                                               ; preds = %49, %25
  %52 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %52
}

declare dso_local i32 @nvme_nvm_rqtocmd(%struct.nvm_rq*, %struct.nvme_ns*, %struct.nvme_nvm_command*) #1

declare dso_local %struct.request* @nvme_alloc_request(%struct.request_queue*, %struct.nvme_command*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @blk_rq_append_bio(%struct.request*, i32*) #1

declare dso_local i32 @IOPRIO_PRIO_VALUE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
