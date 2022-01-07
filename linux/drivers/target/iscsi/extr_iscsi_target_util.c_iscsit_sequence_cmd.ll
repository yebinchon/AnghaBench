; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_sequence_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_sequence_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iscsi_cmd = type { i32 }

@ISCSI_REASON_BOOKMARK_NO_RESOURCES = common dso_local global i32 0, align 4
@CMDSN_ERROR_CANNOT_RECOVER = common dso_local global i32 0, align 4
@ISTATE_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_sequence_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @ISCSI_REASON_BOOKMARK_NO_RESOURCES, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  %24 = call i32 @iscsit_check_received_cmdsn(%struct.TYPE_4__* %21, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %64 [
    i32 128, label %26
    i32 131, label %50
    i32 130, label %63
    i32 129, label %63
  ]

26:                                               ; preds = %4
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %28 = call i32 @iscsit_execute_cmd(%struct.iscsi_cmd* %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call i32 @list_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @iscsit_execute_ooo_cmdsns(%struct.TYPE_4__* %41)
  br label %49

43:                                               ; preds = %31, %26
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  store i32 1, i32* %11, align 4
  %47 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %48, %38
  br label %74

50:                                               ; preds = %4
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = call i32 @iscsit_handle_ooo_cmdsn(%struct.TYPE_4__* %53, %struct.iscsi_cmd* %54, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  %61 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  store i32 %61, i32* %9, align 4
  br label %74

62:                                               ; preds = %50
  store i32 131, i32* %9, align 4
  br label %74

63:                                               ; preds = %4, %4
  br label %64

64:                                               ; preds = %4, %63
  %65 = load i32, i32* @ISTATE_REMOVE, align 4
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %69 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd* %68, %struct.iscsi_conn* %69, i32 %72)
  store i32 130, i32* %9, align 4
  br label %74

74:                                               ; preds = %64, %62, %60, %49
  %75 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %83, i32 %84, i8* %85)
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iscsit_check_received_cmdsn(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @iscsit_execute_cmd(%struct.iscsi_cmd*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @iscsit_execute_ooo_cmdsns(%struct.TYPE_4__*) #1

declare dso_local i32 @iscsit_handle_ooo_cmdsn(%struct.TYPE_4__*, %struct.iscsi_cmd*, i32) #1

declare dso_local i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
