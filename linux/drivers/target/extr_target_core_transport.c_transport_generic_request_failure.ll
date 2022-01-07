; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_generic_request_failure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_generic_request_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32, %struct.TYPE_6__*, i32, i32, i32 (%struct.se_cmd*, i32, i32*)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.se_cmd*)* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"-----[ Storage Engine Exception; sense_reason %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"-----[ \00", align 1
@CMD_T_ABORTED = common dso_local global i32 0, align 4
@target_abort_work = common dso_local global i32 0, align 4
@target_completion_wq = common dso_local global i32 0, align 4
@SAM_STAT_TASK_SET_FULL = common dso_local global i32 0, align 4
@SAM_STAT_BUSY = common dso_local global i32 0, align 4
@SAM_STAT_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@ASCQ_2CH_PREVIOUS_RESERVATION_CONFLICT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Unknown transport error for CDB 0x%02x: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_generic_request_failure(%struct.se_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %10 = call i32 @target_show_cmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.se_cmd* %9)
  %11 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %12 = call i32 @transport_complete_task_attr(%struct.se_cmd* %11)
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 8
  %15 = load i32 (%struct.se_cmd*, i32, i32*)*, i32 (%struct.se_cmd*, i32, i32*)** %14, align 8
  %16 = icmp ne i32 (%struct.se_cmd*, i32, i32*)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 8
  %20 = load i32 (%struct.se_cmd*, i32, i32*)*, i32 (%struct.se_cmd*, i32, i32*)** %19, align 8
  %21 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %22 = call i32 %20(%struct.se_cmd* %21, i32 0, i32* %6)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CMD_T_ABORTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %31, i32 0, i32 7
  %33 = load i32, i32* @target_abort_work, align 4
  %34 = call i32 @INIT_WORK(i32* %32, i32 %33)
  %35 = load i32, i32* @target_completion_wq, align 4
  %36 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 7
  %38 = call i32 @queue_work(i32 %35, i32* %37)
  br label %118

39:                                               ; preds = %23
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %78 [
    i32 138, label %41
    i32 131, label %41
    i32 145, label %41
    i32 144, label %41
    i32 136, label %41
    i32 140, label %41
    i32 132, label %41
    i32 128, label %41
    i32 150, label %41
    i32 149, label %41
    i32 147, label %41
    i32 148, label %41
    i32 142, label %41
    i32 143, label %41
    i32 141, label %41
    i32 146, label %41
    i32 133, label %41
    i32 129, label %41
    i32 134, label %41
    i32 130, label %41
    i32 137, label %42
    i32 139, label %46
    i32 135, label %50
  ]

41:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39, %39
  br label %86

42:                                               ; preds = %39
  %43 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %44 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  br label %97

46:                                               ; preds = %39
  %47 = load i32, i32* @SAM_STAT_BUSY, align 4
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  br label %97

50:                                               ; preds = %39
  %51 = load i32, i32* @SAM_STAT_RESERVATION_CONFLICT, align 4
  %52 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %54, i32 0, i32 5
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %50
  %59 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %68 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %67, i32 0, i32 5
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %73 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ASCQ_2CH_PREVIOUS_RESERVATION_CONFLICT_STATUS, align 4
  %76 = call i32 @target_ua_allocate_lun(i32 %71, i32 %74, i32 44, i32 %75)
  br label %77

77:                                               ; preds = %66, %58, %50
  br label %97

78:                                               ; preds = %39
  %79 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %80 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  store i32 131, i32* %4, align 4
  br label %86

86:                                               ; preds = %78, %41
  %87 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %87, i32 %88, i32 0)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %111

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %109, %93
  %95 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %96 = call i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd* %95)
  br label %118

97:                                               ; preds = %77, %46, %42
  %98 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %99 = call i32 @trace_target_cmd_complete(%struct.se_cmd* %98)
  %100 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %101 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %100, i32 0, i32 2
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %103, align 8
  %105 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %106 = call i32 %104(%struct.se_cmd* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  br label %94

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %92
  %112 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %113 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %114 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @transport_handle_queue_full(%struct.se_cmd* %112, %struct.TYPE_8__* %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %111, %94, %30
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @target_show_cmd(i8*, %struct.se_cmd*) #1

declare dso_local i32 @transport_complete_task_attr(%struct.se_cmd*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @target_ua_allocate_lun(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.se_cmd*, i32, i32) #1

declare dso_local i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd*) #1

declare dso_local i32 @trace_target_cmd_complete(%struct.se_cmd*) #1

declare dso_local i32 @transport_handle_queue_full(%struct.se_cmd*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
