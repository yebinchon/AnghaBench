; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_handle_recovery_datain_or_r2t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_handle_recovery_datain_or_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unknown cmd->data_direction: 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_handle_recovery_datain_or_r2t(%struct.iscsi_conn* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iscsi_cmd*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.iscsi_cmd* @iscsit_find_cmd_from_itt(%struct.iscsi_conn* %15, i32 %16)
  store %struct.iscsi_cmd* %17, %struct.iscsi_cmd** %14, align 8
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %14, align 8
  %19 = icmp ne %struct.iscsi_cmd* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %42

21:                                               ; preds = %6
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %14, align 8
  %23 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %37 [
    i32 128, label %25
    i32 129, label %31
  ]

25:                                               ; preds = %21
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %14, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @iscsit_handle_r2t_snack(%struct.iscsi_cmd* %26, i8* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %42

31:                                               ; preds = %21
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %14, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @iscsit_handle_recovery_datain(%struct.iscsi_cmd* %32, i8* %33, i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %42

37:                                               ; preds = %21
  %38 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %14, align 8
  %39 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 -1, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %31, %25, %20
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.iscsi_cmd* @iscsit_find_cmd_from_itt(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_handle_r2t_snack(%struct.iscsi_cmd*, i8*, i32, i32) #1

declare dso_local i32 @iscsit_handle_recovery_datain(%struct.iscsi_cmd*, i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
