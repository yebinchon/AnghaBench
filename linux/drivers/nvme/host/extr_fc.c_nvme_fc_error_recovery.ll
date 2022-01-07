; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_error_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_error_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@NVME_CTRL_CONNECTING = common dso_local global i64 0, align 8
@nvme_fc_wq = common dso_local global i32 0, align 4
@NVME_CTRL_LIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"NVME-FC{%d}: transport association error detected: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"NVME-FC{%d}: resetting controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_ctrl*, i8*)* @nvme_fc_error_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_error_recovery(%struct.nvme_fc_ctrl* %0, i8* %1) #0 {
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NVME_CTRL_CONNECTING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %13, i32 0, i32 2
  %15 = call i32 @atomic_xchg(i32* %14, i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @nvme_fc_wq, align 4
  %20 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %20, i32 0, i32 3
  %22 = call i32 @queue_work(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %25, i32 0, i32 2
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = call i32 @WARN_ON(i32 1)
  br label %29

29:                                               ; preds = %24, %18, %12
  br label %59

30:                                               ; preds = %2
  %31 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NVME_CTRL_LIVE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %59

38:                                               ; preds = %30
  %39 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %46)
  %48 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %57 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %56, i32 0, i32 0
  %58 = call i32 @nvme_reset_ctrl(%struct.TYPE_2__* %57)
  br label %59

59:                                               ; preds = %38, %37, %29
  ret void
}

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

declare dso_local i32 @nvme_reset_ctrl(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
