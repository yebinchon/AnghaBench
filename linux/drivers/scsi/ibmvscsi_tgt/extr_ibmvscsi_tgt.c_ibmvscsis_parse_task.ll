; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_parse_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_parse_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ibmvscsis_nexus* }
%struct.ibmvscsis_nexus = type { i32 }
%struct.ibmvscsis_cmd = type { %struct.TYPE_14__, i32, %struct.TYPE_11__, %struct.iu_entry* }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.iu_entry = type { i32 }
%struct.srp_tsk_mgmt = type { i32, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.srp_tsk_mgmt }

@TMR_ABORT_TASK = common dso_local global i32 0, align 4
@TMR_ABORT_TASK_SET = common dso_local global i32 0, align 4
@TMR_CLEAR_TASK_SET = common dso_local global i32 0, align 4
@TMR_LUN_RESET = common dso_local global i32 0, align 4
@TMR_CLEAR_ACA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown task mgmt func %d\0A\00", align 1
@TMR_TASK_MGMT_FUNCTION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"calling submit_tmr, func %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"target_submit_tmr failed, rc %d\0A\00", align 1
@TMR_FUNCTION_REJECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*, %struct.ibmvscsis_cmd*)* @ibmvscsis_parse_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_parse_task(%struct.scsi_info* %0, %struct.ibmvscsis_cmd* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.ibmvscsis_cmd*, align 8
  %5 = alloca %struct.iu_entry*, align 8
  %6 = alloca %struct.srp_tsk_mgmt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibmvscsis_nexus*, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.ibmvscsis_cmd* %1, %struct.ibmvscsis_cmd** %4, align 8
  %11 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %11, i32 0, i32 3
  %13 = load %struct.iu_entry*, %struct.iu_entry** %12, align 8
  store %struct.iu_entry* %13, %struct.iu_entry** %5, align 8
  %14 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %15 = call %struct.TYPE_13__* @vio_iu(%struct.iu_entry* %14)
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store %struct.srp_tsk_mgmt* %17, %struct.srp_tsk_mgmt** %6, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.ibmvscsis_nexus*, %struct.ibmvscsis_nexus** %20, align 8
  store %struct.ibmvscsis_nexus* %21, %struct.ibmvscsis_nexus** %10, align 8
  %22 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %23 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %29 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %45 [
    i32 132, label %31
    i32 131, label %37
    i32 129, label %39
    i32 128, label %41
    i32 130, label %43
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* @TMR_ABORT_TASK, align 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %34 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @be64_to_cpu(i32 %35)
  store i8* %36, i8** %8, align 8
  br label %58

37:                                               ; preds = %2
  %38 = load i32, i32* @TMR_ABORT_TASK_SET, align 4
  store i32 %38, i32* %7, align 4
  br label %58

39:                                               ; preds = %2
  %40 = load i32, i32* @TMR_CLEAR_TASK_SET, align 4
  store i32 %40, i32* %7, align 4
  br label %58

41:                                               ; preds = %2
  %42 = load i32, i32* @TMR_LUN_RESET, align 4
  store i32 %42, i32* %7, align 4
  br label %58

43:                                               ; preds = %2
  %44 = load i32, i32* @TMR_CLEAR_ACA, align 4
  store i32 %44, i32* %7, align 4
  br label %58

45:                                               ; preds = %2
  %46 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %47 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %46, i32 0, i32 1
  %48 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %49 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @TMR_TASK_MGMT_FUNCTION_NOT_SUPPORTED, align 4
  %53 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  store i32 -1, i32* %9, align 4
  br label %58

58:                                               ; preds = %45, %43, %41, %39, %37, %31
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %129, label %61

61:                                               ; preds = %58
  %62 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %63 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @be64_to_cpu(i32 %64)
  %66 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i8* %65, i8** %68, align 8
  %69 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %69, i32 0, i32 0
  %71 = call i32 @spin_lock_bh(i32* %70)
  %72 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %72, i32 0, i32 1
  %74 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %74, i32 0, i32 2
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %78 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %81 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 63
  store i32 %86, i32* %84, align 4
  %87 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %88 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %87, i32 0, i32 1
  %89 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %90 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_dbg(i32* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %93, i32 0, i32 0
  %95 = load %struct.ibmvscsis_nexus*, %struct.ibmvscsis_nexus** %10, align 8
  %96 = getelementptr inbounds %struct.ibmvscsis_nexus, %struct.ibmvscsis_nexus* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %99 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %98, i32 0, i32 1
  %100 = call i32 @scsilun_to_int(%struct.TYPE_15__* %99)
  %101 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @target_submit_tmr(%struct.TYPE_14__* %94, i32 %97, i32* null, i32 %100, %struct.srp_tsk_mgmt* %101, i32 %102, i32 %103, i8* %104, i32 0)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %61
  %109 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %110 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %109, i32 0, i32 1
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %113, i32 0, i32 0
  %115 = call i32 @spin_lock_bh(i32* %114)
  %116 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %116, i32 0, i32 1
  %118 = call i32 @list_del(i32* %117)
  %119 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %120 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock_bh(i32* %120)
  %122 = load i32, i32* @TMR_FUNCTION_REJECTED, align 4
  %123 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %124 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  store i32 %122, i32* %127, align 4
  br label %128

128:                                              ; preds = %108, %61
  br label %129

129:                                              ; preds = %128, %58
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %133, i32 0, i32 0
  %135 = call i32 @transport_send_check_condition_and_sense(%struct.TYPE_14__* %134, i32 0, i32 0)
  br label %136

136:                                              ; preds = %132, %129
  ret void
}

declare dso_local %struct.TYPE_13__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @target_submit_tmr(%struct.TYPE_14__*, i32, i32*, i32, %struct.srp_tsk_mgmt*, i32, i32, i8*, i32) #1

declare dso_local i32 @scsilun_to_int(%struct.TYPE_15__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
