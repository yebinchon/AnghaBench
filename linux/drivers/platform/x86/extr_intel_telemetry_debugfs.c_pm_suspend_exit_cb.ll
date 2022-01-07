; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_pm_suspend_exit_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_telemetry_debugfs.c_pm_suspend_exit_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.telemetry_debugfs_conf = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.telemetry_evtlog = type { i32 }

@TELEM_MAX_OS_ALLOCATED_EVENTS = common dso_local global i32 0, align 4
@pm_suspend_exit_cb.suspend_shlw_ctr_exit = internal global i64 0, align 8
@pm_suspend_exit_cb.suspend_deep_ctr_exit = internal global i64 0, align 8
@pm_suspend_exit_cb.suspend_shlw_res_exit = internal global i64 0, align 8
@pm_suspend_exit_cb.suspend_deep_res_exit = internal global i64 0, align 8
@debugfs_conf = common dso_local global %struct.telemetry_debugfs_conf* null, align 8
@suspend_prep_ok = common dso_local global i64 0, align 8
@TELEM_IOSS = common dso_local global i32 0, align 4
@suspend_shlw_ctr_temp = common dso_local global i64 0, align 8
@suspend_deep_ctr_temp = common dso_local global i64 0, align 8
@suspend_shlw_res_temp = common dso_local global i64 0, align 8
@suspend_deep_res_temp = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Wrong s0ix counters detected\0A\00", align 1
@PMC_GCR_TELEM_SHLW_S0IX_REG = common dso_local global i32 0, align 4
@PMC_GCR_TELEM_DEEP_S0IX_REG = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pm_suspend_exit_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_suspend_exit_cb() #0 {
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
  %11 = load i64, i64* @suspend_prep_ok, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  br label %156

14:                                               ; preds = %0
  %15 = load i32, i32* @TELEM_IOSS, align 4
  %16 = load i32, i32* @TELEM_MAX_OS_ALLOCATED_EVENTS, align 4
  %17 = call i32 @telemetry_raw_read_eventlog(i32 %15, %struct.telemetry_evtlog* %9, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %156

21:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %28 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  %31 = call i32 @TELEM_CHECK_AND_PARSE_CTRS(i32 %29, i64 %30)
  %32 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %33 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  %36 = call i32 @TELEM_CHECK_AND_PARSE_CTRS(i32 %34, i64 %35)
  %37 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %38 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_res_exit, align 8
  %41 = call i32 @TELEM_CHECK_AND_PARSE_CTRS(i32 %39, i64 %40)
  %42 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %43 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_res_exit, align 8
  %46 = call i32 @TELEM_CHECK_AND_PARSE_CTRS(i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  %52 = load i64, i64* @suspend_shlw_ctr_temp, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  %56 = load i64, i64* @suspend_deep_ctr_temp, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_res_exit, align 8
  %60 = load i64, i64* @suspend_shlw_res_temp, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_res_exit, align 8
  %64 = load i64, i64* @suspend_deep_res_temp, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %58, %54, %50
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %156

68:                                               ; preds = %62
  %69 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  %70 = load i64, i64* @suspend_shlw_ctr_temp, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %68
  %73 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  %74 = load i64, i64* @suspend_deep_ctr_temp, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load i32, i32* @PMC_GCR_TELEM_SHLW_S0IX_REG, align 4
  %78 = call i32 @intel_pmc_gcr_read64(i32 %77, i64* @pm_suspend_exit_cb.suspend_shlw_res_exit)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %156

82:                                               ; preds = %76
  %83 = load i32, i32* @PMC_GCR_TELEM_DEEP_S0IX_REG, align 4
  %84 = call i32 @intel_pmc_gcr_read64(i32 %83, i64* @pm_suspend_exit_cb.suspend_deep_res_exit)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %156

88:                                               ; preds = %82
  %89 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_res_exit, align 8
  %90 = load i64, i64* @suspend_shlw_res_temp, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_res_exit, align 8
  %97 = load i64, i64* @suspend_deep_res_temp, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %72, %68
  %104 = load i64, i64* @suspend_shlw_ctr_temp, align 8
  %105 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  %107 = load i64, i64* @suspend_deep_ctr_temp, align 8
  %108 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  %109 = sub nsw i64 %108, %107
  store i64 %109, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  %110 = load i64, i64* @suspend_shlw_res_temp, align 8
  %111 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_res_exit, align 8
  %112 = sub nsw i64 %111, %110
  store i64 %112, i64* @pm_suspend_exit_cb.suspend_shlw_res_exit, align 8
  %113 = load i64, i64* @suspend_deep_res_temp, align 8
  %114 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_res_exit, align 8
  %115 = sub nsw i64 %114, %113
  store i64 %115, i64* @pm_suspend_exit_cb.suspend_deep_res_exit, align 8
  %116 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %103
  %119 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_ctr_exit, align 8
  %120 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %121 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %119
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load i64, i64* @pm_suspend_exit_cb.suspend_shlw_res_exit, align 8
  %128 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %129 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %127
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 4
  br label %135

135:                                              ; preds = %118, %103
  %136 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_ctr_exit, align 8
  %140 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %141 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %139
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 4
  %147 = load i64, i64* @pm_suspend_exit_cb.suspend_deep_res_exit, align 8
  %148 = load %struct.telemetry_debugfs_conf*, %struct.telemetry_debugfs_conf** %3, align 8
  %149 = getelementptr inbounds %struct.telemetry_debugfs_conf, %struct.telemetry_debugfs_conf* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %147
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 4
  br label %155

155:                                              ; preds = %138, %135
  br label %156

156:                                              ; preds = %155, %87, %81, %66, %20, %13
  store i64 0, i64* @suspend_prep_ok, align 8
  %157 = load i32, i32* @NOTIFY_OK, align 4
  %158 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %158)
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @telemetry_raw_read_eventlog(i32, %struct.telemetry_evtlog*, i32) #2

declare dso_local i32 @TELEM_CHECK_AND_PARSE_CTRS(i32, i64) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @intel_pmc_gcr_read64(i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
