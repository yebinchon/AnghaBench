; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_stop_dataout_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_stop_dataout_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32 }

@ISCSI_TF_RUNNING = common dso_local global i32 0, align 4
@ISCSI_TF_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Stopped DataOUT Timer for ITT: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_stop_dataout_timer(%struct.iscsi_cmd* %0) #0 {
  %2 = alloca %struct.iscsi_cmd*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %2, align 8
  %3 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %3, i32 0, i32 1
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 1
  %15 = call i32 @spin_unlock_bh(i32* %14)
  br label %44

16:                                               ; preds = %1
  %17 = load i32, i32* @ISCSI_TF_STOP, align 4
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %25, i32 0, i32 3
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load i32, i32* @ISCSI_TF_RUNNING, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %38 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %2, align 8
  %42 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_bh(i32* %42)
  br label %44

44:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
