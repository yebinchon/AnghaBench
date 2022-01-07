; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_queue_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_queue_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.rdma_cm_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvmet_rdma_device = type { i32 }
%struct.nvmet_rdma_queue = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NVME_RDMA_CM_NO_RSC = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvmet_rdma_queue_mutex = common dso_local global i32 0, align 4
@nvmet_rdma_queue_list = common dso_local global i32 0, align 4
@nvmet_rdma_free_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @nvmet_rdma_queue_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_queue_connect(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.nvmet_rdma_device*, align 8
  %7 = alloca %struct.nvmet_rdma_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %12 = call %struct.nvmet_rdma_device* @nvmet_rdma_find_get_device(%struct.rdma_cm_id* %11)
  store %struct.nvmet_rdma_device* %12, %struct.nvmet_rdma_device** %6, align 8
  %13 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %6, align 8
  %14 = icmp ne %struct.nvmet_rdma_device* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %17 = load i32, i32* @NVME_RDMA_CM_NO_RSC, align 4
  %18 = call i32 @nvmet_rdma_cm_reject(%struct.rdma_cm_id* %16, i32 %17)
  %19 = load i32, i32* @ECONNREFUSED, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %6, align 8
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %24 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %25 = call %struct.nvmet_rdma_queue* @nvmet_rdma_alloc_queue(%struct.nvmet_rdma_device* %22, %struct.rdma_cm_id* %23, %struct.rdma_cm_event* %24)
  store %struct.nvmet_rdma_queue* %25, %struct.nvmet_rdma_queue** %7, align 8
  %26 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %7, align 8
  %27 = icmp ne %struct.nvmet_rdma_queue* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %62

31:                                               ; preds = %21
  %32 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %33 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %7, align 8
  %36 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %7, align 8
  %38 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 (...) @flush_scheduled_work()
  br label %43

43:                                               ; preds = %41, %31
  %44 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %45 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %7, align 8
  %46 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %47 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @nvmet_rdma_cm_accept(%struct.rdma_cm_id* %44, %struct.nvmet_rdma_queue* %45, i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %7, align 8
  %54 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %53, i32 0, i32 2
  %55 = call i32 @schedule_work(i32* %54)
  store i32 0, i32* %3, align 4
  br label %68

56:                                               ; preds = %43
  %57 = call i32 @mutex_lock(i32* @nvmet_rdma_queue_mutex)
  %58 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %7, align 8
  %59 = getelementptr inbounds %struct.nvmet_rdma_queue, %struct.nvmet_rdma_queue* %58, i32 0, i32 1
  %60 = call i32 @list_add_tail(i32* %59, i32* @nvmet_rdma_queue_list)
  %61 = call i32 @mutex_unlock(i32* @nvmet_rdma_queue_mutex)
  store i32 0, i32* %3, align 4
  br label %68

62:                                               ; preds = %28
  %63 = load %struct.nvmet_rdma_device*, %struct.nvmet_rdma_device** %6, align 8
  %64 = getelementptr inbounds %struct.nvmet_rdma_device, %struct.nvmet_rdma_device* %63, i32 0, i32 0
  %65 = load i32, i32* @nvmet_rdma_free_dev, align 4
  %66 = call i32 @kref_put(i32* %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %56, %52, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.nvmet_rdma_device* @nvmet_rdma_find_get_device(%struct.rdma_cm_id*) #1

declare dso_local i32 @nvmet_rdma_cm_reject(%struct.rdma_cm_id*, i32) #1

declare dso_local %struct.nvmet_rdma_queue* @nvmet_rdma_alloc_queue(%struct.nvmet_rdma_device*, %struct.rdma_cm_id*, %struct.rdma_cm_event*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @nvmet_rdma_cm_accept(%struct.rdma_cm_id*, %struct.nvmet_rdma_queue*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
