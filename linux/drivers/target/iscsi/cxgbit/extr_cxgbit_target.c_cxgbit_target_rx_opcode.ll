; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_target_rx_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_target_rx_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { %struct.iscsi_conn*, i32 }
%struct.iscsi_conn = type { i32 }
%struct.cxgbit_lro_pdu_cb = type { i64 }
%struct.iscsi_hdr = type { i32, i32, i32 }
%struct.iscsi_cmd = type { i32 }

@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SECONDS_FOR_LOGOUT_COMP = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Got unknown iSCSI OpCode: 0x%02x\0A\00", align 1
@ISCSI_REASON_BOOKMARK_NO_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*)* @cxgbit_target_rx_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_target_rx_opcode(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %5 = alloca %struct.iscsi_hdr*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  %10 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %11 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32 %12)
  store %struct.cxgbit_lro_pdu_cb* %13, %struct.cxgbit_lro_pdu_cb** %4, align 8
  %14 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %4, align 8
  %15 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.iscsi_hdr*
  store %struct.iscsi_hdr* %17, %struct.iscsi_hdr** %5, align 8
  %18 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %19 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %18, i32 0, i32 0
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %19, align 8
  store %struct.iscsi_conn* %20, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %7, align 8
  %21 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %125 [
    i32 132, label %29
    i32 131, label %39
    i32 133, label %42
    i32 130, label %59
    i32 128, label %71
    i32 134, label %98
    i32 129, label %120
  ]

29:                                               ; preds = %1
  %30 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %31 = call %struct.iscsi_cmd* @cxgbit_allocate_cmd(%struct.cxgbit_sock* %30)
  store %struct.iscsi_cmd* %31, %struct.iscsi_cmd** %7, align 8
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %33 = icmp ne %struct.iscsi_cmd* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %131

35:                                               ; preds = %29
  %36 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %38 = call i32 @cxgbit_handle_scsi_cmd(%struct.cxgbit_sock* %36, %struct.iscsi_cmd* %37)
  store i32 %38, i32* %9, align 4
  br label %129

39:                                               ; preds = %1
  %40 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %41 = call i32 @cxgbit_handle_iscsi_dataout(%struct.cxgbit_sock* %40)
  store i32 %41, i32* %9, align 4
  br label %129

42:                                               ; preds = %1
  %43 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_be32(i32 -1)
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %50 = call %struct.iscsi_cmd* @cxgbit_allocate_cmd(%struct.cxgbit_sock* %49)
  store %struct.iscsi_cmd* %50, %struct.iscsi_cmd** %7, align 8
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %52 = icmp ne %struct.iscsi_cmd* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %131

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %42
  %56 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %58 = call i32 @cxgbit_handle_nop_out(%struct.cxgbit_sock* %56, %struct.iscsi_cmd* %57)
  store i32 %58, i32* %9, align 4
  br label %129

59:                                               ; preds = %1
  %60 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %61 = call %struct.iscsi_cmd* @cxgbit_allocate_cmd(%struct.cxgbit_sock* %60)
  store %struct.iscsi_cmd* %61, %struct.iscsi_cmd** %7, align 8
  %62 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %63 = icmp ne %struct.iscsi_cmd* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %131

65:                                               ; preds = %59
  %66 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %67 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %68 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %69 = bitcast %struct.iscsi_hdr* %68 to i8*
  %70 = call i32 @iscsit_handle_task_mgt_cmd(%struct.iscsi_conn* %66, %struct.iscsi_cmd* %67, i8* %69)
  store i32 %70, i32* %9, align 4
  br label %129

71:                                               ; preds = %1
  %72 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %73 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @cpu_to_be32(i32 -1)
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %79 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.iscsi_cmd* @iscsit_find_cmd_from_itt(%struct.iscsi_conn* %78, i32 %81)
  store %struct.iscsi_cmd* %82, %struct.iscsi_cmd** %7, align 8
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %84 = icmp ne %struct.iscsi_cmd* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %131

86:                                               ; preds = %77
  br label %94

87:                                               ; preds = %71
  %88 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %89 = call %struct.iscsi_cmd* @cxgbit_allocate_cmd(%struct.cxgbit_sock* %88)
  store %struct.iscsi_cmd* %89, %struct.iscsi_cmd** %7, align 8
  %90 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %91 = icmp ne %struct.iscsi_cmd* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %131

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %86
  %95 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %97 = call i32 @cxgbit_handle_text_cmd(%struct.cxgbit_sock* %95, %struct.iscsi_cmd* %96)
  store i32 %97, i32* %9, align 4
  br label %129

98:                                               ; preds = %1
  %99 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %100 = call %struct.iscsi_cmd* @cxgbit_allocate_cmd(%struct.cxgbit_sock* %99)
  store %struct.iscsi_cmd* %100, %struct.iscsi_cmd** %7, align 8
  %101 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %102 = icmp ne %struct.iscsi_cmd* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %131

104:                                              ; preds = %98
  %105 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %106 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %107 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %108 = bitcast %struct.iscsi_hdr* %107 to i8*
  %109 = call i32 @iscsit_handle_logout_cmd(%struct.iscsi_conn* %105, %struct.iscsi_cmd* %106, i8* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %114 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %113, i32 0, i32 0
  %115 = load i32, i32* @SECONDS_FOR_LOGOUT_COMP, align 4
  %116 = load i32, i32* @HZ, align 4
  %117 = mul nsw i32 %115, %116
  %118 = call i32 @wait_for_completion_timeout(i32* %114, i32 %117)
  br label %119

119:                                              ; preds = %112, %104
  br label %129

120:                                              ; preds = %1
  %121 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %122 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %123 = bitcast %struct.iscsi_hdr* %122 to i8*
  %124 = call i32 @iscsit_handle_snack(%struct.iscsi_conn* %121, i8* %123)
  store i32 %124, i32* %9, align 4
  br label %129

125:                                              ; preds = %1
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = call i32 (...) @dump_stack()
  br label %129

129:                                              ; preds = %125, %120, %119, %94, %65, %55, %39, %35
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %2, align 4
  br label %137

131:                                              ; preds = %103, %92, %85, %64, %53, %34
  %132 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %133 = load i32, i32* @ISCSI_REASON_BOOKMARK_NO_RESOURCES, align 4
  %134 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %5, align 8
  %135 = bitcast %struct.iscsi_hdr* %134 to i8*
  %136 = call i32 @iscsit_add_reject(%struct.iscsi_conn* %132, i32 %133, i8* %135)
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %131, %129
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32) #1

declare dso_local %struct.iscsi_cmd* @cxgbit_allocate_cmd(%struct.cxgbit_sock*) #1

declare dso_local i32 @cxgbit_handle_scsi_cmd(%struct.cxgbit_sock*, %struct.iscsi_cmd*) #1

declare dso_local i32 @cxgbit_handle_iscsi_dataout(%struct.cxgbit_sock*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cxgbit_handle_nop_out(%struct.cxgbit_sock*, %struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_handle_task_mgt_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local %struct.iscsi_cmd* @iscsit_find_cmd_from_itt(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @cxgbit_handle_text_cmd(%struct.cxgbit_sock*, %struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_handle_logout_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @iscsit_handle_snack(%struct.iscsi_conn*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @iscsit_add_reject(%struct.iscsi_conn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
