; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_blk_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_blk_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.scm_queue*, %struct.TYPE_4__* }
%struct.scm_queue = type { i32, %struct.scm_request* }
%struct.scm_request = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.scm_device* }
%struct.scm_device = type { i32 }
%struct.blk_mq_queue_data = type { i64, %struct.request* }
%struct.request = type { i32 }
%struct.scm_blk_dev = type { i32 }

@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no request\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"aidaw alloc failed\00", align 1
@nr_requests_per_io = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @scm_blk_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_blk_request(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.scm_device*, align 8
  %7 = alloca %struct.scm_blk_dev*, align 8
  %8 = alloca %struct.scm_queue*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.scm_request*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %11 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.scm_device*, %struct.scm_device** %14, align 8
  store %struct.scm_device* %15, %struct.scm_device** %6, align 8
  %16 = load %struct.scm_device*, %struct.scm_device** %6, align 8
  %17 = getelementptr inbounds %struct.scm_device, %struct.scm_device* %16, i32 0, i32 0
  %18 = call %struct.scm_blk_dev* @dev_get_drvdata(i32* %17)
  store %struct.scm_blk_dev* %18, %struct.scm_blk_dev** %7, align 8
  %19 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %19, i32 0, i32 0
  %21 = load %struct.scm_queue*, %struct.scm_queue** %20, align 8
  store %struct.scm_queue* %21, %struct.scm_queue** %8, align 8
  %22 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %23 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %22, i32 0, i32 1
  %24 = load %struct.request*, %struct.request** %23, align 8
  store %struct.request* %24, %struct.request** %9, align 8
  %25 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %26 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %7, align 8
  %29 = load %struct.request*, %struct.request** %9, align 8
  %30 = call i32 @scm_permit_request(%struct.scm_blk_dev* %28, %struct.request* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %34 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %36, i32* %3, align 4
  br label %114

37:                                               ; preds = %2
  %38 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %39 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %38, i32 0, i32 1
  %40 = load %struct.scm_request*, %struct.scm_request** %39, align 8
  store %struct.scm_request* %40, %struct.scm_request** %10, align 8
  %41 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %42 = icmp ne %struct.scm_request* %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = call %struct.scm_request* (...) @scm_request_fetch()
  store %struct.scm_request* %44, %struct.scm_request** %10, align 8
  %45 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %46 = icmp ne %struct.scm_request* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = call i32 @SCM_LOG(i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %50 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %52, i32* %3, align 4
  br label %114

53:                                               ; preds = %43
  %54 = load %struct.scm_blk_dev*, %struct.scm_blk_dev** %7, align 8
  %55 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %56 = call i32 @scm_request_init(%struct.scm_blk_dev* %54, %struct.scm_request* %55)
  %57 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %58 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %59 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %58, i32 0, i32 1
  store %struct.scm_request* %57, %struct.scm_request** %59, align 8
  br label %60

60:                                               ; preds = %53, %37
  %61 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %62 = load %struct.request*, %struct.request** %9, align 8
  %63 = call i32 @scm_request_set(%struct.scm_request* %61, %struct.request* %62)
  %64 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %65 = call i64 @scm_request_prepare(%struct.scm_request* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = call i32 @SCM_LOG(i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %70 = call i32 @scm_request_set(%struct.scm_request* %69, %struct.request* null)
  %71 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %72 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %80 = call i32 @scm_request_start(%struct.scm_request* %79)
  br label %81

81:                                               ; preds = %78, %67
  %82 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %83 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %82, i32 0, i32 1
  store %struct.scm_request* null, %struct.scm_request** %83, align 8
  %84 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %85 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %87, i32* %3, align 4
  br label %114

88:                                               ; preds = %60
  %89 = load %struct.request*, %struct.request** %9, align 8
  %90 = call i32 @blk_mq_start_request(%struct.request* %89)
  %91 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %92 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %88
  %96 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %97 = getelementptr inbounds %struct.scm_request, %struct.scm_request* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @nr_requests_per_io, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %95, %88
  %105 = load %struct.scm_request*, %struct.scm_request** %10, align 8
  %106 = call i32 @scm_request_start(%struct.scm_request* %105)
  %107 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %108 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %107, i32 0, i32 1
  store %struct.scm_request* null, %struct.scm_request** %108, align 8
  br label %109

109:                                              ; preds = %104, %95
  %110 = load %struct.scm_queue*, %struct.scm_queue** %8, align 8
  %111 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %109, %81, %47, %32
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.scm_blk_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scm_permit_request(%struct.scm_blk_dev*, %struct.request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.scm_request* @scm_request_fetch(...) #1

declare dso_local i32 @SCM_LOG(i32, i8*) #1

declare dso_local i32 @scm_request_init(%struct.scm_blk_dev*, %struct.scm_request*) #1

declare dso_local i32 @scm_request_set(%struct.scm_request*, %struct.request*) #1

declare dso_local i64 @scm_request_prepare(%struct.scm_request*) #1

declare dso_local i32 @scm_request_start(%struct.scm_request*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
