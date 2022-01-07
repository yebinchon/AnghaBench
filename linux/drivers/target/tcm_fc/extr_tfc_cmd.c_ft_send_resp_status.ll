; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_send_resp_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_send_resp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_frame.1 = type { i32 }
%struct.fc_seq = type { i32 }
%struct.fc_frame_header = type { i32, i32 }
%struct.fcp_resp_with_ext = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fcp_resp_rsp_info = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"FCP error response: did %x oxid %x status %x code %x\0A\00", align 1
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@FCP_RSP_LEN_VAL = common dso_local global i32 0, align 4
@FC_RCTL_DD_CMD_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame.1*, i32, i32)* @ft_send_resp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_send_resp_status(%struct.fc_lport* %0, %struct.fc_frame.1* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_frame.1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fc_frame.1*, align 8
  %10 = alloca %struct.fc_seq*, align 8
  %11 = alloca %struct.fc_frame_header*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fcp_resp_with_ext*, align 8
  %14 = alloca %struct.fcp_resp_rsp_info*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %5, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %16 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.1* %15)
  store %struct.fc_frame_header* %16, %struct.fc_frame_header** %11, align 8
  %17 = load %struct.fc_frame_header*, %struct.fc_frame_header** %11, align 8
  %18 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntoh24(i32 %19)
  %21 = load %struct.fc_frame_header*, %struct.fc_frame_header** %11, align 8
  %22 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %25, i32 %26)
  store i64 12, i64* %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SAM_STAT_GOOD, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %31, %4
  %35 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %35, i64 %36)
  store %struct.fc_frame.1* %37, %struct.fc_frame.1** %9, align 8
  %38 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %39 = icmp ne %struct.fc_frame.1* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %98

41:                                               ; preds = %34
  %42 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call %struct.fcp_resp_with_ext* @fc_frame_payload_get(%struct.fc_frame.1* %42, i64 %43)
  store %struct.fcp_resp_with_ext* %44, %struct.fcp_resp_with_ext** %13, align 8
  %45 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @memset(%struct.fcp_resp_with_ext* %45, i32 0, i64 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %13, align 8
  %50 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SAM_STAT_GOOD, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %41
  %56 = call i32 @htonl(i32 4)
  %57 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %13, align 8
  %58 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @FCP_RSP_LEN_VAL, align 4
  %61 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %13, align 8
  %62 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %13, align 8
  %67 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %66, i64 1
  %68 = bitcast %struct.fcp_resp_with_ext* %67 to %struct.fcp_resp_rsp_info*
  store %struct.fcp_resp_rsp_info* %68, %struct.fcp_resp_rsp_info** %14, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.fcp_resp_rsp_info*, %struct.fcp_resp_rsp_info** %14, align 8
  %71 = getelementptr inbounds %struct.fcp_resp_rsp_info, %struct.fcp_resp_rsp_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %55, %41
  %73 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %74 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %75 = load i32, i32* @FC_RCTL_DD_CMD_STATUS, align 4
  %76 = call i32 @fc_fill_reply_hdr(%struct.fc_frame.1* %73, %struct.fc_frame.1* %74, i32 %75, i32 0)
  %77 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %78 = call %struct.fc_seq* @fr_seq(%struct.fc_frame.1* %77)
  store %struct.fc_seq* %78, %struct.fc_seq** %10, align 8
  %79 = load %struct.fc_seq*, %struct.fc_seq** %10, align 8
  %80 = icmp ne %struct.fc_seq* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %83 = load %struct.fc_seq*, %struct.fc_seq** %10, align 8
  %84 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %85 = call i32 @fc_seq_send(%struct.fc_lport* %82, %struct.fc_seq* %83, %struct.fc_frame.1* %84)
  %86 = load %struct.fc_seq*, %struct.fc_seq** %10, align 8
  %87 = call i32 @fc_exch_done(%struct.fc_seq* %86)
  br label %98

88:                                               ; preds = %72
  %89 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %90 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*)** %91, align 8
  %93 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %94 = bitcast %struct.fc_lport* %93 to %struct.fc_lport.0*
  %95 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %96 = bitcast %struct.fc_frame.1* %95 to %struct.fc_frame*
  %97 = call i32 %92(%struct.fc_lport.0* %94, %struct.fc_frame* %96)
  br label %98

98:                                               ; preds = %40, %88, %81
  ret void
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.1*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i64) #1

declare dso_local %struct.fcp_resp_with_ext* @fc_frame_payload_get(%struct.fc_frame.1*, i64) #1

declare dso_local i32 @memset(%struct.fcp_resp_with_ext*, i32, i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @fc_fill_reply_hdr(%struct.fc_frame.1*, %struct.fc_frame.1*, i32, i32) #1

declare dso_local %struct.fc_seq* @fr_seq(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_seq_send(%struct.fc_lport*, %struct.fc_seq*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_exch_done(%struct.fc_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
