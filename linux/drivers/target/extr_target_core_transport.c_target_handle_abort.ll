; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_handle_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_handle_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)* }
%struct.TYPE_3__ = type { i32 }

@CMD_T_TAS = common dso_local global i32 0, align 4
@SCF_ACK_KREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"tag %#llx: send_abort_response = %d\0A\00", align 1
@SCF_SCSI_TMR_CDB = common dso_local global i32 0, align 4
@SAM_STAT_TASK_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Setting SAM_STAT_TASK_ABORTED status for CDB: 0x%02x, ITT: 0x%08llx\0A\00", align 1
@TMR_FUNCTION_REJECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @target_handle_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_handle_abort(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %6 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CMD_T_TAS, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SCF_ACK_KREF, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %1
  %24 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SCF_SCSI_TMR_CDB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %62, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @SAM_STAT_TASK_ABORTED, align 4
  %32 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %35 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %44 = call i32 @trace_target_cmd_complete(%struct.se_cmd* %43)
  %45 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %48, align 8
  %50 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %51 = call i32 %49(%struct.se_cmd* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %30
  %55 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %56 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %57 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @transport_handle_queue_full(%struct.se_cmd* %55, i32 %58, i32 %59, i32 0)
  br label %102

61:                                               ; preds = %30
  br label %75

62:                                               ; preds = %23
  %63 = load i32, i32* @TMR_FUNCTION_REJECTED, align 4
  %64 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 6
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %69 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %68, i32 0, i32 5
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %71, align 8
  %73 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %74 = call i32 %72(%struct.se_cmd* %73)
  br label %75

75:                                               ; preds = %62, %61
  br label %93

76:                                               ; preds = %1
  %77 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %78 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %77, i32 0, i32 5
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %80, align 8
  %82 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %83 = call i32 %81(%struct.se_cmd* %82)
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %88 = call i64 @target_put_sess_cmd(%struct.se_cmd* %87)
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @WARN_ON_ONCE(i32 %90)
  br label %92

92:                                               ; preds = %86, %76
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %95 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %94, i32 0, i32 4
  %96 = call i64 @kref_read(i32* %95)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @WARN_ON_ONCE(i32 %98)
  %100 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %101 = call i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd* %100)
  br label %102

102:                                              ; preds = %93, %54
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @trace_target_cmd_complete(%struct.se_cmd*) #1

declare dso_local i32 @transport_handle_queue_full(%struct.se_cmd*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @target_put_sess_cmd(%struct.se_cmd*) #1

declare dso_local i64 @kref_read(i32*) #1

declare dso_local i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
