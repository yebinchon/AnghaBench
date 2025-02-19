; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_pm_suspend_prep_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_pm_suspend_prep_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telemetry_debugfs_conf = type { i32, i32, i32, i32 }
%struct.telemetry_evtlog = type { i32 }

@TELEM_MAX_OS_ALLOCATED_EVENTS = common dso_local global i32 0, align 4
@debugfs_conf = common dso_local global %struct.telemetry_debugfs_conf* null, align 8
@TELEM_IOSS = common dso_local global i32 0, align 4
@suspend_prep_ok = common dso_local global i32 0, align 4
@suspend_shlw_ctr_temp = common dso_local global i32 0, align 4
@suspend_deep_ctr_temp = common dso_local global i32 0, align 4
@suspend_shlw_res_temp = common dso_local global i32 0, align 4
@suspend_deep_res_temp = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pm_suspend_prep_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_suspend_prep_cb() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.telemetry_debugfs_conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca %struct.telemetry_evtlog, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** @debugfs_conf, align 8
  store %struct.telemetry_debugfs_conf* %10, %struct.telemetry_debugfs_conf** %3, align 8
  %11 = load i32, i32* @TELEM_IOSS, align 4
  %12 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %13 = call i32 @telemetry_raw_read_eventlog(i32 %11, %struct.telemetry_evtlog* %9, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 0, i32* @suspend_prep_ok, align 4
  br label %47

17:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %24 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @suspend_shlw_ctr_temp, align 4
  %27 = call i32 @TELEM_CHECK_AND_PARSE_CTRS(i32 %25, i32 %26)
  %28 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %29 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @suspend_deep_ctr_temp, align 4
  %32 = call i32 @TELEM_CHECK_AND_PARSE_CTRS(i32 %30, i32 %31)
  %33 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %34 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @suspend_shlw_res_temp, align 4
  %37 = call i32 @TELEM_CHECK_AND_PARSE_CTRS(i32 %35, i32 %36)
  %38 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %39 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @suspend_deep_res_temp, align 4
  %42 = call i32 @TELEM_CHECK_AND_PARSE_CTRS(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %18

46:                                               ; preds = %18
  store i32 1, i32* @suspend_prep_ok, align 4
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* @NOTIFY_OK, align 4
  %49 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @telemetry_raw_read_eventlog(i32, %struct.telemetry_evtlog*, i32) #2

declare dso_local i32 @TELEM_CHECK_AND_PARSE_CTRS(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
