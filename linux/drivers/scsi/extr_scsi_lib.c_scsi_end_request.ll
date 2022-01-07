; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_end_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.scsi_cmnd = type { i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, %struct.TYPE_3__*, %struct.request_queue* }
%struct.TYPE_3__ = type { i32 }
%struct.request_queue = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SCMD_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32, i32)* @scsi_end_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_end_request(%struct.request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.request_queue*, align 8
  store %struct.request* %0, %struct.request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.request*, %struct.request** %5, align 8
  %12 = call %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request* %11)
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %8, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 2
  %15 = load %struct.scsi_device*, %struct.scsi_device** %14, align 8
  store %struct.scsi_device* %15, %struct.scsi_device** %9, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 2
  %18 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  store %struct.request_queue* %18, %struct.request_queue** %10, align 8
  %19 = load %struct.request*, %struct.request** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @blk_update_request(%struct.request* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %89

25:                                               ; preds = %3
  %26 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %27 = call i64 @blk_queue_add_random(%struct.request_queue* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @add_disk_randomness(i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i32 @blk_rq_is_scsi(%struct.request* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SCMD_INITIALIZED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON_ONCE(i32 %46)
  %48 = load i32, i32* @SCMD_INITIALIZED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %38, %34
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 1
  %57 = call i32 @destroy_rcu_head(i32* %56)
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %59 = call i32 @scsi_mq_uninit_cmd(%struct.scsi_cmnd* %58)
  %60 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %61 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %60, i32 0, i32 0
  %62 = call i32 @percpu_ref_get(i32* %61)
  %63 = load %struct.request*, %struct.request** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @__blk_mq_end_request(%struct.request* %63, i32 %64)
  %66 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %67 = call %struct.TYPE_4__* @scsi_target(%struct.scsi_device* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %54
  %72 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %73 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @list_empty(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71, %54
  %79 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %80 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %79, i32 0, i32 0
  %81 = call i32 @kblockd_schedule_work(i32* %80)
  br label %85

82:                                               ; preds = %71
  %83 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %84 = call i32 @blk_mq_run_hw_queues(%struct.request_queue* %83, i32 1)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %87 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %86, i32 0, i32 0
  %88 = call i32 @percpu_ref_put(i32* %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %24
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.scsi_cmnd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @blk_update_request(%struct.request*, i32, i32) #1

declare dso_local i64 @blk_queue_add_random(%struct.request_queue*) #1

declare dso_local i32 @add_disk_randomness(i32) #1

declare dso_local i32 @blk_rq_is_scsi(%struct.request*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @destroy_rcu_head(i32*) #1

declare dso_local i32 @scsi_mq_uninit_cmd(%struct.scsi_cmnd*) #1

declare dso_local i32 @percpu_ref_get(i32*) #1

declare dso_local i32 @__blk_mq_end_request(%struct.request*, i32) #1

declare dso_local %struct.TYPE_4__* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kblockd_schedule_work(i32*) #1

declare dso_local i32 @blk_mq_run_hw_queues(%struct.request_queue*, i32) #1

declare dso_local i32 @percpu_ref_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
