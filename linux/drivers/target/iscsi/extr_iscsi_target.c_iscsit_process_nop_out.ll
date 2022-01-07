; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_process_nop_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_process_nop_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32 }
%struct.iscsi_cmd = type { i32, i32 }
%struct.iscsi_nopout = type { i64, i64, i32, i64, i32 }

@RESERVED_ITT = common dso_local global i64 0, align 8
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@CMDSN_LOWER_THAN_EXP = common dso_local global i32 0, align 4
@CMDSN_ERROR_CANNOT_RECOVER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISTATE_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_process_nop_out(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, %struct.iscsi_nopout* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_nopout*, align 8
  %8 = alloca %struct.iscsi_cmd*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store %struct.iscsi_nopout* %2, %struct.iscsi_nopout** %7, align 8
  store %struct.iscsi_cmd* null, %struct.iscsi_cmd** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %7, align 8
  %11 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RESERVED_ITT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %3
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %17 = icmp ne %struct.iscsi_cmd* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %20 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %21 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %7, align 8
  %22 = bitcast %struct.iscsi_nopout* %21 to i8*
  %23 = call i32 @iscsit_add_reject(%struct.iscsi_conn* %19, i32 %20, i8* %22)
  store i32 %23, i32* %4, align 4
  br label %113

24:                                               ; preds = %15
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 1
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %37 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %7, align 8
  %38 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @be32_to_cpu(i64 %39)
  %41 = call i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn* %36, i32 %40)
  %42 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %7, align 8
  %43 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %24
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %49, %struct.iscsi_conn* %50, i32 %53)
  store i32 0, i32* %4, align 4
  br label %113

55:                                               ; preds = %24
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %58 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %7, align 8
  %59 = bitcast %struct.iscsi_nopout* %58 to i8*
  %60 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %7, align 8
  %61 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @iscsit_sequence_cmd(%struct.iscsi_conn* %56, %struct.iscsi_cmd* %57, i8* %59, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @CMDSN_LOWER_THAN_EXP, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %113

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %4, align 4
  br label %113

73:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %113

74:                                               ; preds = %3
  %75 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %7, align 8
  %76 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @cpu_to_be32(i32 -1)
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %82 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %7, align 8
  %83 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @be32_to_cpu(i64 %84)
  %86 = call %struct.iscsi_cmd* @iscsit_find_cmd_from_ttt(%struct.iscsi_conn* %81, i32 %85)
  store %struct.iscsi_cmd* %86, %struct.iscsi_cmd** %8, align 8
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  %88 = icmp ne %struct.iscsi_cmd* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %113

92:                                               ; preds = %80
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %94 = call i32 @iscsit_stop_nopin_response_timer(%struct.iscsi_conn* %93)
  %95 = load i32, i32* @ISTATE_REMOVE, align 4
  %96 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  %97 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  %99 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %100 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %8, align 8
  %101 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd* %98, %struct.iscsi_conn* %99, i32 %102)
  %104 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %105 = call i32 @iscsit_start_nopin_timer(%struct.iscsi_conn* %104)
  store i32 0, i32* %4, align 4
  br label %113

106:                                              ; preds = %74
  %107 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %108 = icmp ne %struct.iscsi_cmd* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %111 = call i32 @iscsit_free_cmd(%struct.iscsi_cmd* %110, i32 0)
  br label %112

112:                                              ; preds = %109, %106
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %92, %89, %73, %72, %67, %48, %18
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @iscsit_add_reject(%struct.iscsi_conn*, i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_sequence_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local %struct.iscsi_cmd* @iscsit_find_cmd_from_ttt(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_stop_nopin_response_timer(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @iscsit_start_nopin_timer(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_free_cmd(%struct.iscsi_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
