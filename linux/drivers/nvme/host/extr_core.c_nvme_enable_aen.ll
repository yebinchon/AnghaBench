; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_enable_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_enable_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32 }

@NVME_AEN_SUPPORTED = common dso_local global i32 0, align 4
@NVME_FEAT_ASYNC_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to configure AEN (cfg %x)\0A\00", align 1
@nvme_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_enable_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_enable_aen(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NVME_AEN_SUPPORTED, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %16 = load i32, i32* @NVME_FEAT_ASYNC_EVENT, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @nvme_set_features(%struct.nvme_ctrl* %15, i32 %16, i32 %17, i32* null, i32 0, i32* %3)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %23 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i32, i32* @nvme_wq, align 4
  %29 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %30 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %29, i32 0, i32 1
  %31 = call i32 @queue_work(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @nvme_set_features(%struct.nvme_ctrl*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
