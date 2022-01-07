; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_srr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_srr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i8*, i8*, %struct.fc_seq*, %struct.fc_rport*, i32, %struct.fc_lport* }
%struct.fc_seq = type { i32 }
%struct.fc_rport = type { i32, %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_lport = type { i32 }
%struct.fc_exch = type { i32, i32 }
%struct.fcp_srr = type { i32, i32, i8*, i8*, i32 }
%struct.fc_frame = type { i32 }

@FC_RP_FLAGS_RETRY = common dso_local global i32 0, align 4
@RPORT_ST_READY = common dso_local global i64 0, align 8
@ELS_SRR = common dso_local global i32 0, align 4
@FC_RCTL_ELS4_REQ = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@FC_FCTL_REQ = common dso_local global i32 0, align 4
@fc_fcp_srr_resp = common dso_local global i32 0, align 4
@fc_fcp_pkt_destroy = common dso_local global i32 0, align 4
@FC_SRB_RCV_STATUS = common dso_local global i32 0, align 4
@FC_TRANS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*, i32, i8*)* @fc_fcp_srr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_srr(%struct.fc_fcp_pkt* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.fc_fcp_pkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.fc_rport_libfc_priv*, align 8
  %10 = alloca %struct.fc_exch*, align 8
  %11 = alloca %struct.fc_seq*, align 8
  %12 = alloca %struct.fcp_srr*, align 8
  %13 = alloca %struct.fc_frame*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %15 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %14, i32 0, i32 6
  %16 = load %struct.fc_lport*, %struct.fc_lport** %15, align 8
  store %struct.fc_lport* %16, %struct.fc_lport** %7, align 8
  %17 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %18 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.fc_exch* @fc_seq_exch(i32 %19)
  store %struct.fc_exch* %20, %struct.fc_exch** %10, align 8
  %21 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %22 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %21, i32 0, i32 4
  %23 = load %struct.fc_rport*, %struct.fc_rport** %22, align 8
  store %struct.fc_rport* %23, %struct.fc_rport** %8, align 8
  %24 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %25 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %24, i32 0, i32 1
  %26 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %25, align 8
  store %struct.fc_rport_libfc_priv* %26, %struct.fc_rport_libfc_priv** %9, align 8
  %27 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %28 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FC_RP_FLAGS_RETRY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %35 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RPORT_ST_READY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %3
  br label %115

40:                                               ; preds = %33
  %41 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %42 = call %struct.fc_frame* @fc_fcp_frame_alloc(%struct.fc_lport* %41, i32 32)
  store %struct.fc_frame* %42, %struct.fc_frame** %13, align 8
  %43 = load %struct.fc_frame*, %struct.fc_frame** %13, align 8
  %44 = icmp ne %struct.fc_frame* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %115

46:                                               ; preds = %40
  %47 = load %struct.fc_frame*, %struct.fc_frame** %13, align 8
  %48 = call %struct.fcp_srr* @fc_frame_payload_get(%struct.fc_frame* %47, i32 32)
  store %struct.fcp_srr* %48, %struct.fcp_srr** %12, align 8
  %49 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %50 = call i32 @memset(%struct.fcp_srr* %49, i32 0, i32 32)
  %51 = load i32, i32* @ELS_SRR, align 4
  %52 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %53 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.fc_exch*, %struct.fc_exch** %10, align 8
  %55 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @htons(i32 %56)
  %58 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %59 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.fc_exch*, %struct.fc_exch** %10, align 8
  %61 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @htons(i32 %62)
  %64 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %65 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %68 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @htonl(i8* %69)
  %71 = load %struct.fcp_srr*, %struct.fcp_srr** %12, align 8
  %72 = getelementptr inbounds %struct.fcp_srr, %struct.fcp_srr* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.fc_frame*, %struct.fc_frame** %13, align 8
  %74 = load i32, i32* @FC_RCTL_ELS4_REQ, align 4
  %75 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %76 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %79 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FC_TYPE_FCP, align 4
  %84 = load i32, i32* @FC_FCTL_REQ, align 4
  %85 = call i32 @fc_fill_fc_hdr(%struct.fc_frame* %73, i32 %74, i32 %77, i32 %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %87 = load %struct.fc_frame*, %struct.fc_frame** %13, align 8
  %88 = load i32, i32* @fc_fcp_srr_resp, align 4
  %89 = load i32, i32* @fc_fcp_pkt_destroy, align 4
  %90 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %91 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %92 = call i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt* %91)
  %93 = call %struct.fc_seq* @fc_exch_seq_send(%struct.fc_lport* %86, %struct.fc_frame* %87, i32 %88, i32 %89, %struct.fc_fcp_pkt* %90, i32 %92)
  store %struct.fc_seq* %93, %struct.fc_seq** %11, align 8
  %94 = load %struct.fc_seq*, %struct.fc_seq** %11, align 8
  %95 = icmp ne %struct.fc_seq* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %46
  br label %115

97:                                               ; preds = %46
  %98 = load %struct.fc_seq*, %struct.fc_seq** %11, align 8
  %99 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %100 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %99, i32 0, i32 3
  store %struct.fc_seq* %98, %struct.fc_seq** %100, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %103 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %106 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @FC_SRB_RCV_STATUS, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %110 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %114 = call i32 @fc_fcp_pkt_hold(%struct.fc_fcp_pkt* %113)
  br label %119

115:                                              ; preds = %96, %45, %39
  %116 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %4, align 8
  %117 = load i32, i32* @FC_TRANS_RESET, align 4
  %118 = call i32 @fc_fcp_retry_cmd(%struct.fc_fcp_pkt* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %97
  ret void
}

declare dso_local %struct.fc_exch* @fc_seq_exch(i32) #1

declare dso_local %struct.fc_frame* @fc_fcp_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local %struct.fcp_srr* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @memset(%struct.fcp_srr*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i8*) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fc_seq* @fc_exch_seq_send(%struct.fc_lport*, %struct.fc_frame*, i32, i32, %struct.fc_fcp_pkt*, i32) #1

declare dso_local i32 @get_fsp_rec_tov(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_pkt_hold(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_retry_cmd(%struct.fc_fcp_pkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
