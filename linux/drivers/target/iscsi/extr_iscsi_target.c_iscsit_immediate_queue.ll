; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_immediate_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_immediate_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32 }
%struct.iscsi_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"Unknown Opcode: 0x%02x ITT: 0x%08x, i_state: %d on CID: %hu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_immediate_queue(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %48 [
    i32 128, label %10
    i32 131, label %18
    i32 129, label %30
    i32 130, label %40
  ]

10:                                               ; preds = %3
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %13 = call i32 @iscsit_send_r2t(%struct.iscsi_cmd* %11, %struct.iscsi_conn* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %61

17:                                               ; preds = %10
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %22, i32 0, i32 2
  %24 = call i32 @list_del_init(i32* %23)
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %29 = call i32 @iscsit_free_cmd(%struct.iscsi_cmd* %28, i32 0)
  br label %60

30:                                               ; preds = %3
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %32 = call i32 @iscsit_mod_nopin_response_timer(%struct.iscsi_conn* %31)
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %35 = call i32 @iscsit_send_unsolicited_nopin(%struct.iscsi_cmd* %33, %struct.iscsi_conn* %34, i32 1)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %61

39:                                               ; preds = %30
  br label %60

40:                                               ; preds = %3
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %43 = call i32 @iscsit_send_unsolicited_nopin(%struct.iscsi_cmd* %41, %struct.iscsi_conn* %42, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %61

47:                                               ; preds = %40
  br label %60

48:                                               ; preds = %3
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %55, i32 %58)
  br label %61

60:                                               ; preds = %47, %39, %18, %17
  store i32 0, i32* %4, align 4
  br label %62

61:                                               ; preds = %48, %46, %38, %16
  store i32 -1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @iscsit_send_r2t(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_free_cmd(%struct.iscsi_cmd*, i32) #1

declare dso_local i32 @iscsit_mod_nopin_response_timer(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_send_unsolicited_nopin(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
