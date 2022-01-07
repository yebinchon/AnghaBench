; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_submit_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_submit_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_fc_ctrl = type { i32, %struct.TYPE_2__, %struct.nvme_fc_fcp_op*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_fc_fcp_op = type { i32 }

@FCCTRL_TERMIO = common dso_local global i32 0, align 4
@NVMEFC_FCP_NODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed async event work\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_fc_submit_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_submit_async_event(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca %struct.nvme_fc_fcp_op*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %8 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %9 = call %struct.nvme_fc_ctrl* @to_fc_ctrl(%struct.nvme_ctrl* %8)
  store %struct.nvme_fc_ctrl* %9, %struct.nvme_fc_ctrl** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %10, i32 0, i32 3
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FCCTRL_TERMIO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %22, i32 0, i32 3
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %49

29:                                               ; preds = %21
  %30 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %30, i32 0, i32 2
  %32 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %31, align 8
  %33 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %32, i64 0
  store %struct.nvme_fc_fcp_op* %33, %struct.nvme_fc_fcp_op** %4, align 8
  %34 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %35 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %4, align 8
  %36 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %4, align 8
  %39 = load i32, i32* @NVMEFC_FCP_NODATA, align 4
  %40 = call i64 @nvme_fc_start_fcp_op(%struct.nvme_fc_ctrl* %34, i32 %37, %struct.nvme_fc_fcp_op* %38, i32 0, i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %45 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %28, %43, %29
  ret void
}

declare dso_local %struct.nvme_fc_ctrl* @to_fc_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @nvme_fc_start_fcp_op(%struct.nvme_fc_ctrl*, i32, %struct.nvme_fc_fcp_op*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
