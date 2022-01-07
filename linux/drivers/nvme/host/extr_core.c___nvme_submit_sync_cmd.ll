; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c___nvme_submit_sync_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c___nvme_submit_sync_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.nvme_command = type { i32 }
%union.nvme_result = type { i32 }
%struct.request = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, %union.nvme_result }

@ADMIN_TIMEOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NVME_REQ_CANCELLED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nvme_submit_sync_cmd(%struct.request_queue* %0, %struct.nvme_command* %1, %union.nvme_result* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_queue*, align 8
  %13 = alloca %struct.nvme_command*, align 8
  %14 = alloca %union.nvme_result*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.request*, align 8
  %23 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %12, align 8
  store %struct.nvme_command* %1, %struct.nvme_command** %13, align 8
  store %union.nvme_result* %2, %union.nvme_result** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %24 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %25 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %26 = load i32, i32* %20, align 4
  %27 = load i32, i32* %18, align 4
  %28 = call %struct.request* @nvme_alloc_request(%struct.request_queue* %24, %struct.nvme_command* %25, i32 %26, i32 %27)
  store %struct.request* %28, %struct.request** %22, align 8
  %29 = load %struct.request*, %struct.request** %22, align 8
  %30 = call i64 @IS_ERR(%struct.request* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %10
  %33 = load %struct.request*, %struct.request** %22, align 8
  %34 = call i32 @PTR_ERR(%struct.request* %33)
  store i32 %34, i32* %11, align 4
  br label %110

35:                                               ; preds = %10
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %17, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ADMIN_TIMEOUT, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.request*, %struct.request** %22, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** %15, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %53 = load %struct.request*, %struct.request** %22, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @blk_rq_map_kern(%struct.request_queue* %52, %struct.request* %53, i8* %54, i32 %55, i32 %56)
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %106

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %48, %42
  %63 = load i32, i32* %21, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.request*, %struct.request** %22, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.request*, %struct.request** %22, align 8
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @nvme_execute_rq_polled(i32 %68, i32* null, %struct.request* %69, i32 %70)
  br label %79

72:                                               ; preds = %62
  %73 = load %struct.request*, %struct.request** %22, align 8
  %74 = getelementptr inbounds %struct.request, %struct.request* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.request*, %struct.request** %22, align 8
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @blk_execute_rq(i32 %75, i32* null, %struct.request* %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %65
  %80 = load %union.nvme_result*, %union.nvme_result** %14, align 8
  %81 = icmp ne %union.nvme_result* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load %union.nvme_result*, %union.nvme_result** %14, align 8
  %84 = load %struct.request*, %struct.request** %22, align 8
  %85 = call %struct.TYPE_2__* @nvme_req(%struct.request* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = bitcast %union.nvme_result* %83 to i8*
  %88 = bitcast %union.nvme_result* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 4, i1 false)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.request*, %struct.request** %22, align 8
  %91 = call %struct.TYPE_2__* @nvme_req(%struct.request* %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NVME_REQ_CANCELLED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89
  %98 = load i32, i32* @EINTR, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %23, align 4
  br label %105

100:                                              ; preds = %89
  %101 = load %struct.request*, %struct.request** %22, align 8
  %102 = call %struct.TYPE_2__* @nvme_req(%struct.request* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %23, align 4
  br label %105

105:                                              ; preds = %100, %97
  br label %106

106:                                              ; preds = %105, %60
  %107 = load %struct.request*, %struct.request** %22, align 8
  %108 = call i32 @blk_mq_free_request(%struct.request* %107)
  %109 = load i32, i32* %23, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %32
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local %struct.request* @nvme_alloc_request(%struct.request_queue*, %struct.nvme_command*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local i32 @blk_rq_map_kern(%struct.request_queue*, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @nvme_execute_rq_polled(i32, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local %struct.TYPE_2__* @nvme_req(%struct.request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @blk_mq_free_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
