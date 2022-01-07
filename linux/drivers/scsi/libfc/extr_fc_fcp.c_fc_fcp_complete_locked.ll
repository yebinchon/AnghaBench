; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_complete_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_complete_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i64, i64, i64, i32, i64, i64, %struct.fc_lport*, %struct.fc_seq*, i64, i32 }
%struct.fc_lport = type { i32 }
%struct.fc_seq = type { i32 }
%struct.fc_exch = type { i32, i32 }
%struct.fc_frame = type { i32 }

@FC_SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@FC_SRB_ABORTED = common dso_local global i32 0, align 4
@FC_CMD_ABORTED = common dso_local global i64 0, align 8
@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@FCP_RESID_UNDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"data underrun, xfer %zx data %x\0A\00", align 1
@FC_DATA_UNDRUN = common dso_local global i64 0, align 8
@FCP_CONF_REQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4
@FC_FC_LAST_SEQ = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@FC_RCTL_DD_SOL_CTL = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*)* @fc_fcp_complete_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca %struct.fc_fcp_pkt*, align 8
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_exch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_frame*, align 8
  %8 = alloca %struct.fc_seq*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %2, align 8
  %9 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %10 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %9, i32 0, i32 7
  %11 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  store %struct.fc_lport* %11, %struct.fc_lport** %3, align 8
  %12 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %13 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FC_SRB_ABORT_PENDING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %148

19:                                               ; preds = %1
  %20 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %21 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FC_SRB_ABORTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %28 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* @FC_CMD_ABORTED, align 8
  %33 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %34 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %33, i32 0, i32 9
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %26
  br label %87

36:                                               ; preds = %19
  %37 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %38 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SAM_STAT_GOOD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %44 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %47 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %42
  %51 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %52 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %86, label %55

55:                                               ; preds = %50
  %56 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %57 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FCP_RESID_UNDER, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %64 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %67 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %70 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = icmp slt i64 %65, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %62, %55
  %75 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %76 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %77 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %80 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @FC_FCP_DBG(%struct.fc_fcp_pkt* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %81)
  %83 = load i64, i64* @FC_DATA_UNDRUN, align 8
  %84 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %85 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %84, i32 0, i32 9
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %74, %62, %50, %42, %36
  br label %87

87:                                               ; preds = %86, %35
  %88 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %89 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %88, i32 0, i32 8
  %90 = load %struct.fc_seq*, %struct.fc_seq** %89, align 8
  store %struct.fc_seq* %90, %struct.fc_seq** %4, align 8
  %91 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %92 = icmp ne %struct.fc_seq* %91, null
  br i1 %92, label %93, label %140

93:                                               ; preds = %87
  %94 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %95 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %94, i32 0, i32 8
  store %struct.fc_seq* null, %struct.fc_seq** %95, align 8
  %96 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %97 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @FCP_CONF_REQ, align 4
  %100 = and i32 %98, %99
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %93
  %104 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %105 = call %struct.fc_seq* @fc_seq_start_next(%struct.fc_seq* %104)
  store %struct.fc_seq* %105, %struct.fc_seq** %8, align 8
  %106 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %107 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %106, i32 0, i32 7
  %108 = load %struct.fc_lport*, %struct.fc_lport** %107, align 8
  %109 = call %struct.fc_frame* @fc_fcp_frame_alloc(%struct.fc_lport* %108, i32 0)
  store %struct.fc_frame* %109, %struct.fc_frame** %7, align 8
  %110 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %111 = icmp ne %struct.fc_frame* %110, null
  br i1 %111, label %112, label %136

112:                                              ; preds = %103
  %113 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @FC_FC_LAST_SEQ, align 4
  %115 = load i32, i32* @FC_FC_END_SEQ, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %120 = call %struct.fc_exch* @fc_seq_exch(%struct.fc_seq* %119)
  store %struct.fc_exch* %120, %struct.fc_exch** %5, align 8
  %121 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %122 = load i32, i32* @FC_RCTL_DD_SOL_CTL, align 4
  %123 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %124 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fc_exch*, %struct.fc_exch** %5, align 8
  %127 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @FC_TYPE_FCP, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @fc_fill_fc_hdr(%struct.fc_frame* %121, i32 %122, i32 %125, i32 %128, i32 %129, i32 %130, i32 0)
  %132 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %133 = load %struct.fc_seq*, %struct.fc_seq** %8, align 8
  %134 = load %struct.fc_frame*, %struct.fc_frame** %7, align 8
  %135 = call i32 @fc_seq_send(%struct.fc_lport* %132, %struct.fc_seq* %133, %struct.fc_frame* %134)
  br label %136

136:                                              ; preds = %112, %103
  br label %137

137:                                              ; preds = %136, %93
  %138 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %139 = call i32 @fc_exch_done(%struct.fc_seq* %138)
  br label %140

140:                                              ; preds = %137, %87
  %141 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %142 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %147 = call i32 @fc_io_compl(%struct.fc_fcp_pkt* %146)
  br label %148

148:                                              ; preds = %18, %145, %140
  ret void
}

declare dso_local i32 @FC_FCP_DBG(%struct.fc_fcp_pkt*, i8*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.fc_seq* @fc_seq_start_next(%struct.fc_seq*) #1

declare dso_local %struct.fc_frame* @fc_fcp_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local %struct.fc_exch* @fc_seq_exch(%struct.fc_seq*) #1

declare dso_local i32 @fc_fill_fc_hdr(%struct.fc_frame*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fc_seq_send(%struct.fc_lport*, %struct.fc_seq*, %struct.fc_frame*) #1

declare dso_local i32 @fc_exch_done(%struct.fc_seq*) #1

declare dso_local i32 @fc_io_compl(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
