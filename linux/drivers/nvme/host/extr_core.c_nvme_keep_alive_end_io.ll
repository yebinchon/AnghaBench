; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_keep_alive_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_keep_alive_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.nvme_ctrl* }
%struct.nvme_ctrl = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed nvme_keep_alive_end_io error=%d\0A\00", align 1
@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@NVME_CTRL_CONNECTING = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @nvme_keep_alive_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_keep_alive_end_io(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_ctrl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %9, align 8
  store %struct.nvme_ctrl* %10, %struct.nvme_ctrl** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = call i32 @blk_mq_free_request(%struct.request* %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %56

21:                                               ; preds = %2
  %22 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %23 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %25 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %24, i32 0, i32 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %29 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %21
  %34 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %35 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NVME_CTRL_CONNECTING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %21
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %41, i32 0, i32 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %49 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %48, i32 0, i32 3
  %50 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %5, align 8
  %51 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @schedule_delayed_work(i32* %49, i32 %54)
  br label %56

56:                                               ; preds = %15, %47, %40
  ret void
}

declare dso_local i32 @blk_mq_free_request(%struct.request*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
