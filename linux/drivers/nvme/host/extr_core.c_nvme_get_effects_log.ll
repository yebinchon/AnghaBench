; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_effects_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_get_effects_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVME_NSID_ALL = common dso_local global i32 0, align 4
@NVME_LOG_CMD_EFFECTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*)* @nvme_get_effects_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_get_effects_log(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %5 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kzalloc(i32 4, i32 %10)
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %39

20:                                               ; preds = %14
  %21 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %22 = load i32, i32* @NVME_NSID_ALL, align 4
  %23 = load i32, i32* @NVME_LOG_CMD_EFFECTS, align 4
  %24 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @nvme_get_log(%struct.nvme_ctrl* %21, i32 %22, i32 %23, i32 0, i32* %26, i32 4, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %20
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @nvme_get_log(%struct.nvme_ctrl*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
