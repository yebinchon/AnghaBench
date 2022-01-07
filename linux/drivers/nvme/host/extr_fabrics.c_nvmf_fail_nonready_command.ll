; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_fail_nonready_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fabrics.c_nvmf_fail_nonready_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i64 }
%struct.request = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NVME_CTRL_DELETING = common dso_local global i64 0, align 8
@NVME_CTRL_DEAD = common dso_local global i64 0, align 8
@REQ_NVME_MPATH = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@NVME_SC_HOST_PATH_ERROR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmf_fail_nonready_command(%struct.nvme_ctrl* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %7 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NVME_CTRL_DELETING, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NVME_CTRL_DEAD, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = call i32 @blk_noretry_request(%struct.request* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @REQ_NVME_MPATH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %21, %17, %11, %2
  %31 = load i32, i32* @NVME_SC_HOST_PATH_ERROR, align 4
  %32 = load %struct.request*, %struct.request** %5, align 8
  %33 = call %struct.TYPE_2__* @nvme_req(%struct.request* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i32 @blk_mq_start_request(%struct.request* %35)
  %37 = load %struct.request*, %struct.request** %5, align 8
  %38 = call i32 @nvme_complete_rq(%struct.request* %37)
  %39 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %28
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @blk_noretry_request(%struct.request*) #1

declare dso_local %struct.TYPE_2__* @nvme_req(%struct.request*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @nvme_complete_rq(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
