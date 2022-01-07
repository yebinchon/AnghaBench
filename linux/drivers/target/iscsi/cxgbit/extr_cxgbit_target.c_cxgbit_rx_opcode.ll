; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_rx_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_rx_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_sock = type { %struct.iscsi_conn*, i32 }
%struct.iscsi_conn = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.cxgbit_lro_pdu_cb = type { i32, %struct.iscsi_hdr* }
%struct.iscsi_hdr = type { i32 }

@PDUCBF_RX_HCRC_ERR = common dso_local global i32 0, align 4
@TARG_CONN_STATE_IN_LOGOUT = common dso_local global i64 0, align 8
@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@ISCSI_OP_TEXT = common dso_local global i32 0, align 4
@ISCSI_OP_LOGOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Received illegal iSCSI Opcode: 0x%02x while in Discovery Session, rejecting.\0A\00", align 1
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_sock*)* @cxgbit_rx_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_rx_opcode(%struct.cxgbit_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_sock*, align 8
  %4 = alloca %struct.cxgbit_lro_pdu_cb*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.cxgbit_sock* %0, %struct.cxgbit_sock** %3, align 8
  %8 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %9 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32 %10)
  store %struct.cxgbit_lro_pdu_cb* %11, %struct.cxgbit_lro_pdu_cb** %4, align 8
  %12 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %13 = getelementptr inbounds %struct.cxgbit_sock, %struct.cxgbit_sock* %12, i32 0, i32 0
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %5, align 8
  %15 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %4, align 8
  %16 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %15, i32 0, i32 1
  %17 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %16, align 8
  store %struct.iscsi_hdr* %17, %struct.iscsi_hdr** %6, align 8
  %18 = load %struct.cxgbit_lro_pdu_cb*, %struct.cxgbit_lro_pdu_cb** %4, align 8
  %19 = getelementptr inbounds %struct.cxgbit_lro_pdu_cb, %struct.cxgbit_lro_pdu_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PDUCBF_RX_HCRC_ERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @atomic_long_inc(i32* %28)
  br label %75

30:                                               ; preds = %1
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TARG_CONN_STATE_IN_LOGOUT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %75

37:                                               ; preds = %30
  %38 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %37
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ISCSI_OP_TEXT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @ISCSI_OP_LOGOUT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %65 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %66 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %67 = bitcast %struct.iscsi_hdr* %66 to i8*
  %68 = call i32 @iscsit_add_reject(%struct.iscsi_conn* %64, i32 %65, i8* %67)
  br label %75

69:                                               ; preds = %56, %37
  %70 = load %struct.cxgbit_sock*, %struct.cxgbit_sock** %3, align 8
  %71 = call i64 @cxgbit_target_rx_opcode(%struct.cxgbit_sock* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %75

74:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %76

75:                                               ; preds = %73, %61, %36, %24
  store i32 -1, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.cxgbit_lro_pdu_cb* @cxgbit_rx_pdu_cb(i32) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @iscsit_add_reject(%struct.iscsi_conn*, i32, i8*) #1

declare dso_local i64 @cxgbit_target_rx_opcode(%struct.cxgbit_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
