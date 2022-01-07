; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_complete_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_complete_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32 }
%union.nvme_result = type { i32 }

@NVME_SC_SUCCESS = common dso_local global i32 0, align 4
@nvme_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_complete_async_event(%struct.nvme_ctrl* %0, i32 %1, %union.nvme_result* %2) #0 {
  %4 = alloca %struct.nvme_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.nvme_result*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.nvme_result* %2, %union.nvme_result** %6, align 8
  %9 = load %union.nvme_result*, %union.nvme_result** %6, align 8
  %10 = bitcast %union.nvme_result* %9 to i32*
  %11 = load volatile i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 7
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = ashr i32 %16, 1
  %18 = load i32, i32* @NVME_SC_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %40

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %34 [
    i32 130, label %23
    i32 131, label %27
    i32 129, label %27
    i32 132, label %27
    i32 128, label %27
  ]

23:                                               ; preds = %21
  %24 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @nvme_handle_aen_notice(%struct.nvme_ctrl* %24, i32 %25)
  br label %35

27:                                               ; preds = %21, %21, %21, %21
  %28 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @trace_nvme_async_event(%struct.nvme_ctrl* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %27, %23
  %36 = load i32, i32* @nvme_wq, align 4
  %37 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %4, align 8
  %38 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %37, i32 0, i32 1
  %39 = call i32 @queue_work(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %20
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @nvme_handle_aen_notice(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @trace_nvme_async_event(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
