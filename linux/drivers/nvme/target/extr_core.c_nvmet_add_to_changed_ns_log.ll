; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_add_to_changed_ns_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_core.c_nvmet_add_to_changed_ns_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ctrl = type { i64, i64*, i32 }

@NVME_MAX_CHANGED_NAMESPACES = common dso_local global i64 0, align 8
@U32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_ctrl*, i64)* @nvmet_add_to_changed_ns_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_add_to_changed_ns_log(%struct.nvmet_ctrl* %0, i64 %1) #0 {
  %3 = alloca %struct.nvmet_ctrl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nvmet_ctrl* %0, %struct.nvmet_ctrl** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NVME_MAX_CHANGED_NAMESPACES, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %61

15:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %61

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NVME_MAX_CHANGED_NAMESPACES, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = call i64 @cpu_to_le32(i32 -1)
  %44 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %45 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  store i64 %43, i64* %47, align 8
  %48 = load i64, i64* @U32_MAX, align 8
  %49 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %61

51:                                               ; preds = %36
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %54 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %57 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = getelementptr inbounds i64, i64* %55, i64 %58
  store i64 %52, i64* %60, align 8
  br label %61

61:                                               ; preds = %51, %42, %31, %14
  %62 = load %struct.nvmet_ctrl*, %struct.nvmet_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.nvmet_ctrl, %struct.nvmet_ctrl* %62, i32 0, i32 2
  %64 = call i32 @mutex_unlock(i32* %63)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
