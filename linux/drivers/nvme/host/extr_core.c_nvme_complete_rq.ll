; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@BLK_STS_OK = common dso_local global i64 0, align 8
@REQ_NVME_MPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_complete_rq(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = call %struct.TYPE_4__* @nvme_req(%struct.request* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @nvme_error_status(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.request*, %struct.request** %2, align 8
  %10 = call i32 @trace_nvme_complete_rq(%struct.request* %9)
  %11 = load %struct.request*, %struct.request** %2, align 8
  %12 = call %struct.TYPE_4__* @nvme_req(%struct.request* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = call %struct.TYPE_4__* @nvme_req(%struct.request* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %18, %1
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @BLK_STS_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.request*, %struct.request** %2, align 8
  %30 = call i64 @nvme_req_needs_retry(%struct.request* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.request*, %struct.request** %2, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @REQ_NVME_MPATH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @blk_path_error(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.request*, %struct.request** %2, align 8
  %50 = call i32 @nvme_failover_req(%struct.request* %49)
  br label %68

51:                                               ; preds = %44, %37
  %52 = load %struct.request*, %struct.request** %2, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @blk_queue_dying(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load %struct.request*, %struct.request** %2, align 8
  %59 = call i32 @nvme_retry_req(%struct.request* %58)
  br label %68

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %32
  %62 = load %struct.request*, %struct.request** %2, align 8
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @nvme_trace_bio_complete(%struct.request* %62, i64 %63)
  %65 = load %struct.request*, %struct.request** %2, align 8
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @blk_mq_end_request(%struct.request* %65, i64 %66)
  br label %68

68:                                               ; preds = %61, %57, %48
  ret void
}

declare dso_local i64 @nvme_error_status(i32) #1

declare dso_local %struct.TYPE_4__* @nvme_req(%struct.request*) #1

declare dso_local i32 @trace_nvme_complete_rq(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nvme_req_needs_retry(%struct.request*) #1

declare dso_local i64 @blk_path_error(i64) #1

declare dso_local i32 @nvme_failover_req(%struct.request*) #1

declare dso_local i32 @blk_queue_dying(i32) #1

declare dso_local i32 @nvme_retry_req(%struct.request*) #1

declare dso_local i32 @nvme_trace_bio_complete(%struct.request*, i64) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
