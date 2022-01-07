; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_complete_qf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_complete_qf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)* }

@TRANSPORT_COMPLETE_QF_ERR = common dso_local global i64 0, align 8
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@SCF_TREAT_READ_AS_NORMAL = common dso_local global i32 0, align 4
@SCF_TRANSPORT_TASK_SENSE = common dso_local global i32 0, align 4
@SCF_BIDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @transport_complete_qf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_complete_qf(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %5 = call i32 @transport_complete_task_attr(%struct.se_cmd* %4)
  %6 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TRANSPORT_COMPLETE_QF_ERR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %80

17:                                               ; preds = %11
  %18 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %19 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  %20 = call i32 @translate_sense_reason(%struct.se_cmd* %18, i32 %19)
  br label %80

21:                                               ; preds = %1
  %22 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SCF_TREAT_READ_AS_NORMAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SCF_TRANSPORT_TASK_SENSE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %80

36:                                               ; preds = %28, %21
  %37 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %38 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %90 [
    i32 130, label %40
    i32 128, label %63
    i32 129, label %79
  ]

40:                                               ; preds = %36
  %41 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SCF_TREAT_READ_AS_NORMAL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %80

53:                                               ; preds = %45, %40
  %54 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %55 = call i32 @trace_target_cmd_complete(%struct.se_cmd* %54)
  %56 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %57 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %59, align 8
  %61 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %62 = call i32 %60(%struct.se_cmd* %61)
  store i32 %62, i32* %3, align 4
  br label %91

63:                                               ; preds = %36
  %64 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SCF_BIDI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %72 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %74, align 8
  %76 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %77 = call i32 %75(%struct.se_cmd* %76)
  store i32 %77, i32* %3, align 4
  br label %91

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %36, %78
  br label %80

80:                                               ; preds = %79, %52, %35, %17, %16
  %81 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %82 = call i32 @trace_target_cmd_complete(%struct.se_cmd* %81)
  %83 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %84 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %83, i32 0, i32 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %86, align 8
  %88 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %89 = call i32 %87(%struct.se_cmd* %88)
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %36
  br label %91

91:                                               ; preds = %90, %80, %70, %53
  %92 = load i32, i32* %3, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %96 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %97 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @transport_handle_queue_full(%struct.se_cmd* %95, i32 %98, i32 %99, i32 0)
  br label %104

101:                                              ; preds = %91
  %102 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %103 = call i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd* %102)
  br label %104

104:                                              ; preds = %101, %94
  ret void
}

declare dso_local i32 @transport_complete_task_attr(%struct.se_cmd*) #1

declare dso_local i32 @translate_sense_reason(%struct.se_cmd*, i32) #1

declare dso_local i32 @trace_target_cmd_complete(%struct.se_cmd*) #1

declare dso_local i32 @transport_handle_queue_full(%struct.se_cmd*, i32, i32, i32) #1

declare dso_local i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
