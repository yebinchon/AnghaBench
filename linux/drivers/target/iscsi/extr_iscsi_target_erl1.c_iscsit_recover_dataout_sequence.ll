; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_recover_dataout_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_recover_dataout_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32 }

@ICF_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_recover_dataout_sequence(%struct.iscsi_cmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load i32, i32* @ICF_WITHIN_COMMAND_RECOVERY, align 4
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @iscsit_recalculate_dataout_values(%struct.iscsi_cmd* %21, i32 %22, i32 %23, i32* %9, i32* %8)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @iscsit_send_recovery_r2t(%struct.iscsi_cmd* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @iscsit_recalculate_dataout_values(%struct.iscsi_cmd*, i32, i32, i32*, i32*) #1

declare dso_local i32 @iscsit_send_recovery_r2t(%struct.iscsi_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
