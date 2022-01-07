; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsi_target_rx_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsi_target_rx_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_hdr = type { i32, i32, i32 }
%struct.iscsi_cmd = type { i32 }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SECONDS_FOR_LOGOUT_COMP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Got unknown iSCSI OpCode: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Cannot recover from unknown opcode while ERL=0, closing iSCSI connection.\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Unable to recover from unknown opcode while OFMarker=No, closing iSCSI connection.\0A\00", align 1
@ISCSI_REASON_BOOKMARK_NO_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, i8*)* @iscsi_target_rx_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_target_rx_opcode(%struct.iscsi_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_hdr*, align 8
  %7 = alloca %struct.iscsi_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.iscsi_hdr*
  store %struct.iscsi_hdr* %10, %struct.iscsi_hdr** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %12 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %118 [
    i32 132, label %16
    i32 131, label %28
    i32 133, label %32
    i32 130, label %51
    i32 128, label %63
    i32 134, label %92
    i32 129, label %114
  ]

16:                                               ; preds = %2
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %19 = call %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %17, i32 %18)
  store %struct.iscsi_cmd* %19, %struct.iscsi_cmd** %7, align 8
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %21 = icmp ne %struct.iscsi_cmd* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %137

23:                                               ; preds = %16
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @iscsit_handle_scsi_cmd(%struct.iscsi_conn* %24, %struct.iscsi_cmd* %25, i8* %26)
  store i32 %27, i32* %8, align 4
  br label %135

28:                                               ; preds = %2
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @iscsit_handle_data_out(%struct.iscsi_conn* %29, i8* %30)
  store i32 %31, i32* %8, align 4
  br label %135

32:                                               ; preds = %2
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %7, align 8
  %33 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpu_to_be32(i32 -1)
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %40 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %41 = call %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %39, i32 %40)
  store %struct.iscsi_cmd* %41, %struct.iscsi_cmd** %7, align 8
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %43 = icmp ne %struct.iscsi_cmd* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %137

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @iscsit_handle_nop_out(%struct.iscsi_conn* %47, %struct.iscsi_cmd* %48, i8* %49)
  store i32 %50, i32* %8, align 4
  br label %135

51:                                               ; preds = %2
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %53 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %54 = call %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %52, i32 %53)
  store %struct.iscsi_cmd* %54, %struct.iscsi_cmd** %7, align 8
  %55 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %56 = icmp ne %struct.iscsi_cmd* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %137

58:                                               ; preds = %51
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @iscsit_handle_task_mgt_cmd(%struct.iscsi_conn* %59, %struct.iscsi_cmd* %60, i8* %61)
  store i32 %62, i32* %8, align 4
  br label %135

63:                                               ; preds = %2
  %64 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cpu_to_be32(i32 -1)
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %71 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %72 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.iscsi_cmd* @iscsit_find_cmd_from_itt(%struct.iscsi_conn* %70, i32 %73)
  store %struct.iscsi_cmd* %74, %struct.iscsi_cmd** %7, align 8
  %75 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %76 = icmp ne %struct.iscsi_cmd* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %137

78:                                               ; preds = %69
  br label %87

79:                                               ; preds = %63
  %80 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %81 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %82 = call %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %80, i32 %81)
  store %struct.iscsi_cmd* %82, %struct.iscsi_cmd** %7, align 8
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %84 = icmp ne %struct.iscsi_cmd* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %137

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %78
  %88 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %89 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @iscsit_handle_text_cmd(%struct.iscsi_conn* %88, %struct.iscsi_cmd* %89, i8* %90)
  store i32 %91, i32* %8, align 4
  br label %135

92:                                               ; preds = %2
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %94 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %95 = call %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn* %93, i32 %94)
  store %struct.iscsi_cmd* %95, %struct.iscsi_cmd** %7, align 8
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %97 = icmp ne %struct.iscsi_cmd* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %137

99:                                               ; preds = %92
  %100 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %101 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @iscsit_handle_logout_cmd(%struct.iscsi_conn* %100, %struct.iscsi_cmd* %101, i8* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %108 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %107, i32 0, i32 1
  %109 = load i32, i32* @SECONDS_FOR_LOGOUT_COMP, align 4
  %110 = load i32, i32* @HZ, align 4
  %111 = mul nsw i32 %109, %110
  %112 = call i32 @wait_for_completion_timeout(i32* %108, i32 %111)
  br label %113

113:                                              ; preds = %106, %99
  br label %135

114:                                              ; preds = %2
  %115 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @iscsit_handle_snack(%struct.iscsi_conn* %115, i8* %116)
  store i32 %117, i32* %8, align 4
  br label %135

118:                                              ; preds = %2
  %119 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %120 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %124 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %118
  %132 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %142

133:                                              ; preds = %118
  %134 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %135

135:                                              ; preds = %133, %114, %113, %87, %58, %46, %28, %23
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %142

137:                                              ; preds = %98, %85, %77, %57, %44, %22
  %138 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %139 = load i32, i32* @ISCSI_REASON_BOOKMARK_NO_RESOURCES, align 4
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @iscsit_add_reject(%struct.iscsi_conn* %138, i32 %139, i8* %140)
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %137, %135, %131
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.iscsi_cmd* @iscsit_allocate_cmd(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_handle_scsi_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_handle_data_out(%struct.iscsi_conn*, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @iscsit_handle_nop_out(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_handle_task_mgt_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local %struct.iscsi_cmd* @iscsit_find_cmd_from_itt(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_handle_text_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_handle_logout_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @iscsit_handle_snack(%struct.iscsi_conn*, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_add_reject(%struct.iscsi_conn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
