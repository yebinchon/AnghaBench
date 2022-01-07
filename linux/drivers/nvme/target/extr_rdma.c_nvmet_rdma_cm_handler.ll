; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_cm_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_cm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvmet_rdma_queue* }
%struct.nvmet_rdma_queue = type { i32 }
%struct.rdma_cm_event = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s (%d): status %d id %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Connection rejected: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"received unrecognized RDMA CM event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @nvmet_rdma_cm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_cm_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.nvmet_rdma_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  store %struct.nvmet_rdma_queue* null, %struct.nvmet_rdma_queue** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %13 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %15, align 8
  store %struct.nvmet_rdma_queue* %16, %struct.nvmet_rdma_queue** %5, align 8
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %19 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rdma_event_msg(i32 %20)
  %22 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %23 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %26 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %29 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27, %struct.rdma_cm_id* %28)
  %30 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %31 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %58 [
    i32 134, label %33
    i32 131, label %37
    i32 136, label %40
    i32 132, label %40
    i32 129, label %40
    i32 133, label %43
    i32 130, label %47
    i32 128, label %54
    i32 135, label %54
  ]

33:                                               ; preds = %17
  %34 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %35 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %36 = call i32 @nvmet_rdma_queue_connect(%struct.rdma_cm_id* %34, %struct.rdma_cm_event* %35)
  store i32 %36, i32* %6, align 4
  br label %63

37:                                               ; preds = %17
  %38 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %39 = call i32 @nvmet_rdma_queue_established(%struct.nvmet_rdma_queue* %38)
  br label %63

40:                                               ; preds = %17, %17, %17
  %41 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %42 = call i32 @nvmet_rdma_queue_disconnect(%struct.nvmet_rdma_queue* %41)
  br label %63

43:                                               ; preds = %17
  %44 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %45 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %46 = call i32 @nvmet_rdma_device_removal(%struct.rdma_cm_id* %44, %struct.nvmet_rdma_queue* %45)
  store i32 %46, i32* %6, align 4
  br label %63

47:                                               ; preds = %17
  %48 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %49 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %50 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rdma_reject_msg(%struct.rdma_cm_id* %48, i32 %51)
  %53 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %17, %17, %47
  %55 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %56 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %57 = call i32 @nvmet_rdma_queue_connect_fail(%struct.rdma_cm_id* %55, %struct.nvmet_rdma_queue* %56)
  br label %63

58:                                               ; preds = %17
  %59 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %60 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %54, %43, %40, %37, %33
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @rdma_event_msg(i32) #1

declare dso_local i32 @nvmet_rdma_queue_connect(%struct.rdma_cm_id*, %struct.rdma_cm_event*) #1

declare dso_local i32 @nvmet_rdma_queue_established(%struct.nvmet_rdma_queue*) #1

declare dso_local i32 @nvmet_rdma_queue_disconnect(%struct.nvmet_rdma_queue*) #1

declare dso_local i32 @nvmet_rdma_device_removal(%struct.rdma_cm_id*, %struct.nvmet_rdma_queue*) #1

declare dso_local i32 @rdma_reject_msg(%struct.rdma_cm_id*, i32) #1

declare dso_local i32 @nvmet_rdma_queue_connect_fail(%struct.rdma_cm_id*, %struct.nvmet_rdma_queue*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
