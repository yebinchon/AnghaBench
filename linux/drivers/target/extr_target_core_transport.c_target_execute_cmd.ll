; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32 }

@TRANSPORT_PROCESSING = common dso_local global i32 0, align 4
@CMD_T_ACTIVE = common dso_local global i32 0, align 4
@CMD_T_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_execute_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %3 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %4 = call i64 @target_cmd_interrupted(%struct.se_cmd* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %48

7:                                                ; preds = %1
  %8 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load i32, i32* @TRANSPORT_PROCESSING, align 4
  %12 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @CMD_T_ACTIVE, align 4
  %15 = load i32, i32* @CMD_T_SENT, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %22 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock_irq(i32* %22)
  %24 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %25 = call i64 @target_write_prot_action(%struct.se_cmd* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %48

28:                                               ; preds = %7
  %29 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %30 = call i64 @target_handle_task_attr(%struct.se_cmd* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load i32, i32* @CMD_T_SENT, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_irq(i32* %43)
  br label %48

45:                                               ; preds = %28
  %46 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %47 = call i32 @__target_execute_cmd(%struct.se_cmd* %46, i32 1)
  br label %48

48:                                               ; preds = %45, %32, %27, %6
  ret void
}

declare dso_local i64 @target_cmd_interrupted(%struct.se_cmd*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @target_write_prot_action(%struct.se_cmd*) #1

declare dso_local i64 @target_handle_task_attr(%struct.se_cmd*) #1

declare dso_local i32 @__target_execute_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
