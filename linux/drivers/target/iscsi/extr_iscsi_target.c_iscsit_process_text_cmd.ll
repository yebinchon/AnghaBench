; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_process_text_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_process_text_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32 }
%struct.iscsi_cmd = type { i8*, i32, i32, i32 }
%struct.iscsi_text = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Unable to locate text_in buffer for sendtargets discovery\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SendTargets\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Received Text Data that is not SendTargets, cannot continue.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"No \22=\22 separator found in Text Data,  cannot continue.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"=All\00", align 1
@ICF_SENDTARGETS_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"=iqn.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"=eui.\00", align 1
@ICF_SENDTARGETS_SINGLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Unable to locate valid SendTargets=%s value\0A\00", align 1
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@CMDSN_ERROR_CANNOT_RECOVER = common dso_local global i32 0, align 4
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_process_text_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, %struct.iscsi_text* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_text*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store %struct.iscsi_text* %2, %struct.iscsi_text** %7, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %3
  %17 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %113

29:                                               ; preds = %16
  br label %83

30:                                               ; preds = %3
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 11)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %113

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 61)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %113

43:                                               ; preds = %36
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @ICF_SENDTARGETS_ALL, align 4
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %71

53:                                               ; preds = %43
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %54, i32 5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %58, i32 5)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @ICF_SENDTARGETS_SINGLE, align 4
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %70

67:                                               ; preds = %57
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %68)
  br label %113

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %47
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %73 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_bh(i32* %73)
  %75 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %76 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %75, i32 0, i32 2
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %78 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %77, i32 0, i32 1
  %79 = call i32 @list_add_tail(i32* %76, i32* %78)
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %81 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock_bh(i32* %81)
  br label %83

83:                                               ; preds = %71, %29
  %84 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %85 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %86 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be32_to_cpu(i32 %87)
  %89 = call i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn* %84, i32 %88)
  %90 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %91 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %83
  %97 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %98 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %99 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %100 = bitcast %struct.iscsi_text* %99 to i8*
  %101 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %102 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @iscsit_sequence_cmd(%struct.iscsi_conn* %97, %struct.iscsi_cmd* %98, i8* %100, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  store i32 -1, i32* %4, align 4
  br label %119

109:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %119

110:                                              ; preds = %83
  %111 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %112 = call i32 @iscsit_execute_cmd(%struct.iscsi_cmd* %111, i32 0)
  store i32 %112, i32* %4, align 4
  br label %119

113:                                              ; preds = %67, %41, %34, %27
  %114 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %115 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %116 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %117 = bitcast %struct.iscsi_text* %116 to i8*
  %118 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %114, i32 %115, i8* %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %113, %110, %109, %108
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_sequence_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*, i32) #1

declare dso_local i32 @iscsit_execute_cmd(%struct.iscsi_cmd*, i32) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
