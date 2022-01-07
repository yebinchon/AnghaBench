; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_cm_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_cm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.nvme_rdma_queue* }
%struct.nvme_rdma_queue = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rdma_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s (%d): status %d id %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CM error event %d\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"disconnect received - connection closed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unexpected RDMA CM event (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @nvme_rdma_cm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_cm_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.nvme_rdma_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  %8 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %9 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %8, i32 0, i32 0
  %10 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %9, align 8
  store %struct.nvme_rdma_queue* %10, %struct.nvme_rdma_queue** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %12 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %18 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rdma_event_msg(i32 %19)
  %21 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %22 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %25 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %28 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, %struct.rdma_cm_id* %27)
  %29 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %30 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %81 [
    i32 137, label %32
    i32 130, label %35
    i32 133, label %38
    i32 132, label %46
    i32 131, label %52
    i32 136, label %52
    i32 128, label %52
    i32 138, label %55
    i32 134, label %68
    i32 139, label %68
    i32 129, label %68
    i32 135, label %80
  ]

32:                                               ; preds = %2
  %33 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %34 = call i32 @nvme_rdma_addr_resolved(%struct.nvme_rdma_queue* %33)
  store i32 %34, i32* %7, align 4
  br label %96

35:                                               ; preds = %2
  %36 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %37 = call i32 @nvme_rdma_route_resolved(%struct.nvme_rdma_queue* %36)
  store i32 %37, i32* %7, align 4
  br label %96

38:                                               ; preds = %2
  %39 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %40 = call i32 @nvme_rdma_conn_established(%struct.nvme_rdma_queue* %39)
  %41 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %42 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %44 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %43, i32 0, i32 1
  %45 = call i32 @complete(i32* %44)
  store i32 0, i32* %3, align 4
  br label %107

46:                                               ; preds = %2
  %47 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %48 = call i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue* %47)
  %49 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %50 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %51 = call i32 @nvme_rdma_conn_rejected(%struct.nvme_rdma_queue* %49, %struct.rdma_cm_event* %50)
  store i32 %51, i32* %7, align 4
  br label %96

52:                                               ; preds = %2, %2, %2
  %53 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %54 = call i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue* %53)
  br label %55

55:                                               ; preds = %2, %52
  %56 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %57 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %63 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ECONNRESET, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %96

68:                                               ; preds = %2, %2, %2
  %69 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %70 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %77 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = call i32 @nvme_rdma_error_recovery(%struct.TYPE_4__* %78)
  br label %96

80:                                               ; preds = %2
  br label %96

81:                                               ; preds = %2
  %82 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %83 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %89 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %93 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @nvme_rdma_error_recovery(%struct.TYPE_4__* %94)
  br label %96

96:                                               ; preds = %81, %80, %68, %55, %46, %35, %32
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %102 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %6, align 8
  %104 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %103, i32 0, i32 1
  %105 = call i32 @complete(i32* %104)
  br label %106

106:                                              ; preds = %99, %96
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %38
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @rdma_event_msg(i32) #1

declare dso_local i32 @nvme_rdma_addr_resolved(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @nvme_rdma_route_resolved(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @nvme_rdma_conn_established(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @nvme_rdma_destroy_queue_ib(%struct.nvme_rdma_queue*) #1

declare dso_local i32 @nvme_rdma_conn_rejected(%struct.nvme_rdma_queue*, %struct.rdma_cm_event*) #1

declare dso_local i32 @nvme_rdma_error_recovery(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
