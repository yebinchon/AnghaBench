; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_telemetry_debugfs_check_evts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_telemetry_debugfs_check_evts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64 }

@debugfs_conf = common dso_local global %struct.TYPE_2__* null, align 8
@TELEM_PSS_IDLE_EVTS = common dso_local global i64 0, align 8
@TELEM_PSS_IDLE_BLOCKED_EVTS = common dso_local global i64 0, align 8
@TELEM_PSS_S0IX_BLOCKED_EVTS = common dso_local global i64 0, align 8
@TELEM_PSS_LTR_BLOCKING_EVTS = common dso_local global i64 0, align 8
@TELEM_PSS_S0IX_WAKEUP_EVTS = common dso_local global i64 0, align 8
@TELEM_IOSS_DX_D0IX_EVTS = common dso_local global i64 0, align 8
@TELEM_IOSS_PG_EVTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @telemetry_debugfs_check_evts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telemetry_debugfs_check_evts() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugfs_conf, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @TELEM_PSS_IDLE_EVTS, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %43, label %7

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugfs_conf, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TELEM_PSS_IDLE_BLOCKED_EVTS, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %43, label %13

13:                                               ; preds = %7
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugfs_conf, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TELEM_PSS_S0IX_BLOCKED_EVTS, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %43, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugfs_conf, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TELEM_PSS_LTR_BLOCKING_EVTS, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugfs_conf, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TELEM_PSS_S0IX_WAKEUP_EVTS, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugfs_conf, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TELEM_IOSS_DX_D0IX_EVTS, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debugfs_conf, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TELEM_IOSS_PG_EVTS, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %31, %25, %19, %13, %7, %0
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %1, align 4
  br label %47

46:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
