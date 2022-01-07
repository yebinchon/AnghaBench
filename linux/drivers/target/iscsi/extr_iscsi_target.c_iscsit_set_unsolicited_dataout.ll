; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_set_unsolicited_dataout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_set_unsolicited_dataout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd* %0) #0 {
  %2 = alloca %struct.iscsi_cmd*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %2, align 8
  %3 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %4 = call i32 @iscsit_set_dataout_sequence_values(%struct.iscsi_cmd* %3)
  %5 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @iscsit_start_dataout_timer(%struct.iscsi_cmd* %8, i32 %11)
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock_bh(i32* %14)
  ret void
}

declare dso_local i32 @iscsit_set_dataout_sequence_values(%struct.iscsi_cmd*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iscsit_start_dataout_timer(%struct.iscsi_cmd*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
