; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_submit_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_submit_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_loop_ctrl = type { %struct.TYPE_5__, %struct.nvme_loop_iod, %struct.nvme_loop_queue* }
%struct.TYPE_5__ = type { i32 }
%struct.nvme_loop_iod = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.nvme_loop_queue = type { i32, i32 }

@nvme_admin_async_event = common dso_local global i32 0, align 4
@NVME_AQ_BLK_MQ_DEPTH = common dso_local global i32 0, align 4
@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@nvme_loop_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed async event work\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_loop_submit_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_loop_submit_async_event(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca %struct.nvme_loop_ctrl*, align 8
  %4 = alloca %struct.nvme_loop_queue*, align 8
  %5 = alloca %struct.nvme_loop_iod*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %7 = call %struct.nvme_loop_ctrl* @to_loop_ctrl(%struct.nvme_ctrl* %6)
  store %struct.nvme_loop_ctrl* %7, %struct.nvme_loop_ctrl** %3, align 8
  %8 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %8, i32 0, i32 2
  %10 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %9, align 8
  %11 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %10, i64 0
  store %struct.nvme_loop_queue* %11, %struct.nvme_loop_queue** %4, align 8
  %12 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %12, i32 0, i32 1
  store %struct.nvme_loop_iod* %13, %struct.nvme_loop_iod** %5, align 8
  %14 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %15 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %14, i32 0, i32 2
  %16 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 12)
  %17 = load i32, i32* @nvme_admin_async_event, align 4
  %18 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %19 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @NVME_AQ_BLK_MQ_DEPTH, align 4
  %23 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %28 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %29 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %35 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %34, i32 0, i32 1
  %36 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %4, align 8
  %37 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %36, i32 0, i32 1
  %38 = load %struct.nvme_loop_queue*, %struct.nvme_loop_queue** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_loop_queue, %struct.nvme_loop_queue* %38, i32 0, i32 0
  %40 = call i32 @nvmet_req_init(i32* %35, i32* %37, i32* %39, i32* @nvme_loop_ops)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %1
  %43 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %52

48:                                               ; preds = %1
  %49 = load %struct.nvme_loop_iod*, %struct.nvme_loop_iod** %5, align 8
  %50 = getelementptr inbounds %struct.nvme_loop_iod, %struct.nvme_loop_iod* %49, i32 0, i32 0
  %51 = call i32 @schedule_work(i32* %50)
  br label %52

52:                                               ; preds = %48, %42
  ret void
}

declare dso_local %struct.nvme_loop_ctrl* @to_loop_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @nvmet_req_init(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
