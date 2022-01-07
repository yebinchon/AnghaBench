; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_clear_changed_ns_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_clear_changed_ns_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }

@NVME_MAX_CHANGED_NAMESPACES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NVME_NSID_ALL = common dso_local global i32 0, align 4
@NVME_LOG_CHANGED_NS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"reading changed ns log failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_clear_changed_ns_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_clear_changed_ns_log(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %6 = load i32, i32* @NVME_MAX_CHANGED_NAMESPACES, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kzalloc(i64 %9, i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %17 = load i32, i32* @NVME_NSID_ALL, align 4
  %18 = load i32, i32* @NVME_LOG_CHANGED_NS, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @nvme_get_log(%struct.nvme_ctrl* %16, i32 %17, i32 %18, i32 0, i32* %19, i64 %20, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %26 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %15
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @kfree(i32* %31)
  br label %33

33:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @nvme_get_log(%struct.nvme_ctrl*, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
