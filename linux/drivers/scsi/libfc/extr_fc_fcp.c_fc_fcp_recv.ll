; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_fcp_pkt = type { i32, i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i64 }
%struct.fc_frame_header = type { i64, i64 }
%struct.fcp_txrdy = type { i32, i32 }

@LPORT_ST_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"lport state %d, ignoring r_ctl %x\0A\00", align 1
@FC_TYPE_BLS = common dso_local global i64 0, align 8
@FC_SRB_ABORTED = common dso_local global i32 0, align 4
@FC_SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"command aborted, ignoring r_ctl %x\0A\00", align 1
@FC_RCTL_DD_DATA_DESC = common dso_local global i64 0, align 8
@FCPHF_CRC_UNCHECKED = common dso_local global i32 0, align 4
@FC_RCTL_DD_SOL_DATA = common dso_local global i64 0, align 8
@FC_RCTL_DD_CMD_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"unexpected frame.  r_ctl %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_fcp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_recv(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_fcp_pkt*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.fc_frame_header*, align 8
  %10 = alloca %struct.fcp_txrdy*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.fc_fcp_pkt*
  store %struct.fc_fcp_pkt* %14, %struct.fc_fcp_pkt** %7, align 8
  %15 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %15, i32 0, i32 3
  %17 = load %struct.fc_lport*, %struct.fc_lport** %16, align 8
  store %struct.fc_lport* %17, %struct.fc_lport** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %19 = call i64 @IS_ERR(%struct.fc_frame* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %23 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %24 = call i32 @fc_fcp_error(%struct.fc_fcp_pkt* %22, %struct.fc_frame* %23)
  br label %153

25:                                               ; preds = %3
  %26 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %27 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %26)
  store %struct.fc_frame_header* %27, %struct.fc_frame_header** %9, align 8
  %28 = load %struct.fc_frame_header*, %struct.fc_frame_header** %9, align 8
  %29 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %32 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LPORT_ST_READY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %38 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 (%struct.fc_fcp_pkt*, i8*, i64, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %41)
  br label %150

43:                                               ; preds = %25
  %44 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %45 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %150

48:                                               ; preds = %43
  %49 = load %struct.fc_frame_header*, %struct.fc_frame_header** %9, align 8
  %50 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FC_TYPE_BLS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %56 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %57 = call i32 @fc_fcp_abts_resp(%struct.fc_fcp_pkt* %55, %struct.fc_frame* %56)
  br label %147

58:                                               ; preds = %48
  %59 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %60 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FC_SRB_ABORTED, align 4
  %63 = load i32, i32* @FC_SRB_ABORT_PENDING, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 (%struct.fc_fcp_pkt*, i8*, i64, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  br label %147

71:                                               ; preds = %58
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @FC_RCTL_DD_DATA_DESC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %71
  %76 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %77 = call i32 @fr_flags(%struct.fc_frame* %76)
  %78 = load i32, i32* @FCPHF_CRC_UNCHECKED, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @WARN_ON(i32 %79)
  %81 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %82 = call %struct.fcp_txrdy* @fc_frame_payload_get(%struct.fc_frame* %81, i32 8)
  store %struct.fcp_txrdy* %82, %struct.fcp_txrdy** %10, align 8
  %83 = load %struct.fcp_txrdy*, %struct.fcp_txrdy** %10, align 8
  %84 = icmp ne %struct.fcp_txrdy* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN_ON(i32 %86)
  %88 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %89 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %90 = load %struct.fcp_txrdy*, %struct.fcp_txrdy** %10, align 8
  %91 = getelementptr inbounds %struct.fcp_txrdy, %struct.fcp_txrdy* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ntohl(i32 %92)
  %94 = load %struct.fcp_txrdy*, %struct.fcp_txrdy** %10, align 8
  %95 = getelementptr inbounds %struct.fcp_txrdy, %struct.fcp_txrdy* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @ntohl(i32 %96)
  %98 = call i32 @fc_fcp_send_data(%struct.fc_fcp_pkt* %88, %struct.fc_seq* %89, i64 %93, i64 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %75
  %102 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %103 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %106 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %75
  br label %146

108:                                              ; preds = %71
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @FC_RCTL_DD_SOL_DATA, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %114 = call i32 @fr_len(%struct.fc_frame* %113)
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %115, 16
  %117 = zext i1 %116 to i32
  %118 = call i32 @WARN_ON(i32 %117)
  %119 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %120 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %121 = call i32 @fc_fcp_recv_data(%struct.fc_fcp_pkt* %119, %struct.fc_frame* %120)
  %122 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %123 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %126 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  br label %145

127:                                              ; preds = %108
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @FC_RCTL_DD_CMD_STATUS, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %133 = call i32 @fr_flags(%struct.fc_frame* %132)
  %134 = load i32, i32* @FCPHF_CRC_UNCHECKED, align 4
  %135 = and i32 %133, %134
  %136 = call i32 @WARN_ON(i32 %135)
  %137 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %138 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %139 = call i32 @fc_fcp_resp(%struct.fc_fcp_pkt* %137, %struct.fc_frame* %138)
  br label %144

140:                                              ; preds = %127
  %141 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %142 = load i64, i64* %11, align 8
  %143 = call i32 (%struct.fc_fcp_pkt*, i8*, i64, ...) @FC_FCP_DBG(%struct.fc_fcp_pkt* %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %142)
  br label %144

144:                                              ; preds = %140, %131
  br label %145

145:                                              ; preds = %144, %112
  br label %146

146:                                              ; preds = %145, %107
  br label %147

147:                                              ; preds = %146, %67, %54
  %148 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %149 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %148)
  br label %150

150:                                              ; preds = %147, %47, %36
  %151 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %152 = call i32 @fc_frame_free(%struct.fc_frame* %151)
  br label %153

153:                                              ; preds = %150, %21
  ret void
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_error(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @FC_FCP_DBG(%struct.fc_fcp_pkt*, i8*, i64, ...) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_fcp_abts_resp(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fr_flags(%struct.fc_frame*) #1

declare dso_local %struct.fcp_txrdy* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @fc_fcp_send_data(%struct.fc_fcp_pkt*, %struct.fc_seq*, i64, i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @fr_len(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_recv_data(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_resp(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
