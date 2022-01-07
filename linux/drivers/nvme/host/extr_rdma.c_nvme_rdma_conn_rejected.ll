; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_conn_rejected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_conn_rejected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_queue = type { %struct.TYPE_4__*, %struct.rdma_cm_id* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rdma_cm_id = type { i32 }
%struct.rdma_cm_event = type { i32 }
%struct.nvme_rdma_cm_rej = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Connect rejected: status %d (%s) nvme status %d (%s).\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Connect rejected: status %d (%s).\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_queue*, %struct.rdma_cm_event*)* @nvme_rdma_conn_rejected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_conn_rejected(%struct.nvme_rdma_queue* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.nvme_rdma_queue*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvme_rdma_cm_rej*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_rdma_queue* %0, %struct.nvme_rdma_queue** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  %11 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %11, i32 0, i32 1
  %13 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %12, align 8
  store %struct.rdma_cm_id* %13, %struct.rdma_cm_id** %5, align 8
  %14 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %15 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @rdma_reject_msg(%struct.rdma_cm_id* %17, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %21 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %22 = call %struct.nvme_rdma_cm_rej* @rdma_consumer_reject_data(%struct.rdma_cm_id* %20, %struct.rdma_cm_event* %21, i32* %9)
  store %struct.nvme_rdma_cm_rej* %22, %struct.nvme_rdma_cm_rej** %8, align 8
  %23 = load %struct.nvme_rdma_cm_rej*, %struct.nvme_rdma_cm_rej** %8, align 8
  %24 = icmp ne %struct.nvme_rdma_cm_rej* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %27, 4
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.nvme_rdma_cm_rej*, %struct.nvme_rdma_cm_rej** %8, align 8
  %31 = getelementptr inbounds %struct.nvme_rdma_cm_rej, %struct.nvme_rdma_cm_rej* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @nvme_rdma_cm_msg(i32 %43)
  %45 = call i32 (i32, i8*, i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41, i32 %42, i32 %44)
  br label %56

46:                                               ; preds = %25, %2
  %47 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %3, align 8
  %48 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 (i32, i8*, i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %46, %29
  %57 = load i32, i32* @ECONNRESET, align 4
  %58 = sub nsw i32 0, %57
  ret i32 %58
}

declare dso_local i8* @rdma_reject_msg(%struct.rdma_cm_id*, i32) #1

declare dso_local %struct.nvme_rdma_cm_rej* @rdma_consumer_reject_data(%struct.rdma_cm_id*, %struct.rdma_cm_event*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @nvme_rdma_cm_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
