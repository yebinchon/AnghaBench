; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_get_immediate_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_get_immediate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i64, %struct.TYPE_2__, i64, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.iscsi_scsi_req = type { i32 }

@IMMEDIATE_DATA_NORMAL_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Dumping min(%d - %d, %d) = %d bytes of immediate data\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Finished dumping immediate data\0A\00", align 1
@IMMEDIATE_DATA_CANNOT_RECOVER = common dso_local global i32 0, align 4
@CMDSN_ERROR_CANNOT_RECOVER = common dso_local global i32 0, align 4
@CMDSN_LOWER_THAN_EXP = common dso_local global i32 0, align 4
@IMMEDIATE_DATA_ERL1_CRC_FAILURE = common dso_local global i32 0, align 4
@ISTATE_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_scsi_req*, i32)* @iscsit_get_immediate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_get_immediate_data(%struct.iscsi_cmd* %0, %struct.iscsi_scsi_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_scsi_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_scsi_req* %1, %struct.iscsi_scsi_req** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @IMMEDIATE_DATA_NORMAL_OPERATION, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %3
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @min(i64 %23, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %34, i32 %37, i32 %38)
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @iscsit_dump_data_payload(i32 %42, i32 %43, i32 1)
  store i32 %44, i32* %10, align 4
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %15
  %49 = load i32, i32* @IMMEDIATE_DATA_CANNOT_RECOVER, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %15
  br label %58

51:                                               ; preds = %3
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %53 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %54 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @iscsit_handle_immediate_data(%struct.iscsi_cmd* %52, %struct.iscsi_scsi_req* %53, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %51, %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @IMMEDIATE_DATA_NORMAL_OPERATION, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %58
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %64 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %67 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %68 = bitcast %struct.iscsi_scsi_req* %67 to i8*
  %69 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %70 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @iscsit_sequence_cmd(i32 %65, %struct.iscsi_cmd* %66, i8* %68, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %119

77:                                               ; preds = %62
  %78 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @CMDSN_LOWER_THAN_EXP, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82, %77
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %87, i32 0, i32 3
  %89 = call i32 @target_put_sess_cmd(%struct.TYPE_2__* %88)
  store i32 0, i32* %4, align 4
  br label %119

90:                                               ; preds = %82
  %91 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %92 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %97 = call i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd* %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %99

99:                                               ; preds = %98
  br label %118

100:                                              ; preds = %58
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @IMMEDIATE_DATA_ERL1_CRC_FAILURE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i32, i32* @ISTATE_REMOVE, align 4
  %106 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %109 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %110 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %113 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd* %108, i32 %111, i32 %114)
  br label %117

116:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  br label %119

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117, %99
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %116, %86, %76
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @iscsit_dump_data_payload(i32, i32, i32) #1

declare dso_local i32 @iscsit_handle_immediate_data(%struct.iscsi_cmd*, %struct.iscsi_scsi_req*, i32) #1

declare dso_local i32 @iscsit_sequence_cmd(i32, %struct.iscsi_cmd*, i8*, i32) #1

declare dso_local i32 @target_put_sess_cmd(%struct.TYPE_2__*) #1

declare dso_local i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
