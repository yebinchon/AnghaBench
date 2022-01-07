; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_get_seq_holder_for_r2t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_get_seq_holder_for_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_seq = type { i64, i64 }
%struct.iscsi_cmd = type { i64, i64, %struct.iscsi_seq* }

@.str = private unnamed_addr constant [37 x i8] c"struct iscsi_cmd->seq_list is NULL!\0A\00", align 1
@SEQTYPE_NORMAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_seq* @iscsit_get_seq_holder_for_r2t(%struct.iscsi_cmd* %0) #0 {
  %2 = alloca %struct.iscsi_seq*, align 8
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca i64, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  %5 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %5, i32 0, i32 2
  %7 = load %struct.iscsi_seq*, %struct.iscsi_seq** %6, align 8
  %8 = icmp ne %struct.iscsi_seq* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_seq* null, %struct.iscsi_seq** %2, align 8
  br label %56

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %52, %11
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %19, i32 0, i32 2
  %21 = load %struct.iscsi_seq*, %struct.iscsi_seq** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %21, i64 %22
  %24 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SEQTYPE_NORMAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %52

29:                                               ; preds = %18
  %30 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %30, i32 0, i32 2
  %32 = load %struct.iscsi_seq*, %struct.iscsi_seq** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %32, i64 %33
  %35 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %38 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 2
  %48 = load %struct.iscsi_seq*, %struct.iscsi_seq** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %48, i64 %49
  store %struct.iscsi_seq* %50, %struct.iscsi_seq** %2, align 8
  br label %56

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %12

55:                                               ; preds = %12
  store %struct.iscsi_seq* null, %struct.iscsi_seq** %2, align 8
  br label %56

56:                                               ; preds = %55, %41, %9
  %57 = load %struct.iscsi_seq*, %struct.iscsi_seq** %2, align 8
  ret %struct.iscsi_seq* %57
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
