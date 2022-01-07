; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_check_unsolicited_dataout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_check_unsolicited_dataout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, %struct.se_cmd, %struct.iscsi_conn* }
%struct.se_cmd = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.iscsi_data = type { i32, i32 }

@.str = private unnamed_addr constant [76 x i8] c"Received unexpected unsolicited data while InitialR2T=Yes, protocol error.\0A\00", align 1
@TCM_UNEXPECTED_UNSOLICITED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Total %u bytes exceeds FirstBurstLength: %u for this Unsolicited DataOut Burst.\0A\00", align 1
@TCM_INCORRECT_AMOUNT_OF_DATA = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [115 x i8] c"Unsolicited non-immediate data received %u does not equal FirstBurstLength: %u, and does not equal ExpXferLen %u.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_check_unsolicited_dataout(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca %struct.iscsi_data*, align 8
  %9 = alloca i64, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 2
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %6, align 8
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 1
  store %struct.se_cmd* %14, %struct.se_cmd** %7, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.iscsi_data*
  store %struct.iscsi_data* %16, %struct.iscsi_data** %8, align 8
  %17 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %18 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntoh24(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %32 = load i32, i32* @TCM_UNEXPECTED_UNSOLICITED_DATA, align 4
  %33 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %31, i32 %32, i32 0)
  store i32 -1, i32* %3, align 4
  br label %120

34:                                               ; preds = %2
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %39, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %34
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %55 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %60)
  %62 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %63 = load i32, i32* @TCM_INCORRECT_AMOUNT_OF_DATA, align 4
  %64 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %62, i32 %63, i32 0)
  store i32 -1, i32* %3, align 4
  br label %120

65:                                               ; preds = %34
  %66 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %67 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %120

73:                                               ; preds = %65
  %74 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %73
  %85 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %86 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %91 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %89, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %84
  %99 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %100 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %105 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %112 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.2, i64 0, i64 0), i64 %103, i64 %110, i64 %114)
  %116 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %117 = load i32, i32* @TCM_INCORRECT_AMOUNT_OF_DATA, align 4
  %118 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %116, i32 %117, i32 0)
  store i32 -1, i32* %3, align 4
  br label %120

119:                                              ; preds = %84, %73
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %98, %72, %48, %29
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.se_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
