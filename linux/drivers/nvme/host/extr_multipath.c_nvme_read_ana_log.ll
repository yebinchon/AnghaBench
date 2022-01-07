; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_read_ana_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_read_ana_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32, i32, i32, i32 }

@NVME_NSID_ALL = common dso_local global i32 0, align 4
@NVME_LOG_ANA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get ANA log: %d\0A\00", align 1
@nvme_update_ana_state = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*)* @nvme_read_ana_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_read_ana_log(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %9 = load i32, i32* @NVME_NSID_ALL, align 4
  %10 = load i32, i32* @NVME_LOG_ANA, align 4
  %11 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %12 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nvme_get_log(%struct.nvme_ctrl* %8, i32 %9, i32 %10, i32 0, i32 %13, i32 %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %28 = load i32, i32* @nvme_update_ana_state, align 4
  %29 = call i32 @nvme_parse_ana_log(%struct.nvme_ctrl* %27, i64* %3, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %54

33:                                               ; preds = %26
  %34 = load i64, i64* %3, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %38 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %37, i32 0, i32 2
  %39 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %40 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = mul nsw i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @jiffies, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @mod_timer(i32* %38, i64 %47)
  br label %53

49:                                               ; preds = %33
  %50 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %51 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %50, i32 0, i32 2
  %52 = call i32 @del_timer_sync(i32* %51)
  br label %53

53:                                               ; preds = %49, %36
  br label %54

54:                                               ; preds = %53, %32, %20
  %55 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %56 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvme_get_log(%struct.nvme_ctrl*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @nvme_parse_ana_log(%struct.nvme_ctrl*, i64*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
