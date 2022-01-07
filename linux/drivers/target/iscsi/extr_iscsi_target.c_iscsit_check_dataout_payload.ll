; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_check_dataout_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_check_dataout_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)* }
%struct.iscsi_data = type { i32 }

@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@DATAOUT_SEND_R2T = common dso_local global i32 0, align 4
@DATAOUT_SEND_TO_TRANSPORT = common dso_local global i32 0, align 4
@ICF_OOO_CMDSN = common dso_local global i32 0, align 4
@ICF_GOT_LAST_DATAOUT = common dso_local global i32 0, align 4
@ISTATE_RECEIVED_LAST_DATAOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_check_dataout_payload(%struct.iscsi_cmd* %0, %struct.iscsi_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_data* %1, %struct.iscsi_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 4
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %8, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %15 = load %struct.iscsi_data*, %struct.iscsi_data** %6, align 8
  %16 = bitcast %struct.iscsi_data* %15 to i8*
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @iscsit_check_post_dataout(%struct.iscsi_cmd* %14, i8* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @DATAOUT_NORMAL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %78

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DATAOUT_SEND_R2T, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %33 = call i32 @iscsit_set_dataout_sequence_values(%struct.iscsi_cmd* %32)
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)** %37, align 8
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %41 = call i32 %38(%struct.iscsi_conn* %39, %struct.iscsi_cmd* %40, i32 0)
  br label %76

42:                                               ; preds = %27
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @DATAOUT_SEND_TO_TRANSPORT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 2
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ICF_OOO_CMDSN, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @ICF_GOT_LAST_DATAOUT, align 4
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @ISTATE_RECEIVED_LAST_DATAOUT, align 4
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock_bh(i32* %64)
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %67 = call i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd* %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %78

71:                                               ; preds = %46
  %72 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %72, i32 0, i32 1
  %74 = call i32 @target_execute_cmd(i32* %73)
  store i32 0, i32* %4, align 4
  br label %78

75:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %78

76:                                               ; preds = %31
  br label %77

77:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %75, %71, %70, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @iscsit_check_post_dataout(%struct.iscsi_cmd*, i8*, i32) #1

declare dso_local i32 @iscsit_set_dataout_sequence_values(%struct.iscsi_cmd*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd*) #1

declare dso_local i32 @target_execute_cmd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
