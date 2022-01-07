; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, i32, i32, i32, i32 }

@SCF_TRANSPORT_TASK_SENSE = common dso_local global i32 0, align 4
@TRANSPORT_COMPLETE = common dso_local global i32 0, align 4
@CMD_T_COMPLETE = common dso_local global i32 0, align 4
@CMD_T_ACTIVE = common dso_local global i32 0, align 4
@target_complete_ok_work = common dso_local global i32 0, align 4
@target_complete_failure_work = common dso_local global i32 0, align 4
@SCF_USE_CPUID = common dso_local global i32 0, align 4
@target_completion_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_complete_cmd(%struct.se_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %8 = call i64 @target_cmd_interrupted(%struct.se_cmd* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %78

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %15, i32 0, i32 5
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %32 [
    i32 128, label %22
  ]

22:                                               ; preds = %11
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SCF_TRANSPORT_TASK_SENSE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %29
  br label %33

32:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* @TRANSPORT_COMPLETE, align 4
  %35 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @CMD_T_COMPLETE, align 4
  %38 = load i32, i32* @CMD_T_ACTIVE, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 5
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %48, i32 0, i32 3
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* @target_complete_ok_work, align 4
  br label %56

54:                                               ; preds = %33
  %55 = load i32, i32* @target_complete_failure_work, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 @INIT_WORK(i32* %49, i32 %57)
  %59 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %60 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SCF_USE_CPUID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %67 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @target_completion_wq, align 4
  %70 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %71 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %70, i32 0, i32 3
  %72 = call i32 @queue_work_on(i32 %68, i32 %69, i32* %71)
  br label %78

73:                                               ; preds = %56
  %74 = load i32, i32* @target_completion_wq, align 4
  %75 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %76 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %75, i32 0, i32 3
  %77 = call i32 @queue_work(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %10, %73, %65
  ret void
}

declare dso_local i64 @target_cmd_interrupted(%struct.se_cmd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
