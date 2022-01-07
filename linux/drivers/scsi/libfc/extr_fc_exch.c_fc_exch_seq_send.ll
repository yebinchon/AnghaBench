; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_seq_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_seq_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_lport = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_frame.1 = type { i32 }
%struct.fc_exch = type { void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)*, void (%struct.fc_seq*, i8*)*, i32, i64, i32, i32, i32, %struct.fc_seq, %struct.fc_lport*, i32, i8* }
%struct.fc_frame_header = type { i64, i32, i32, i32, i32 }
%struct.fc_fcp_pkt = type { i32 }

@ESB_ST_SEQ_INIT = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CMD = common dso_local global i64 0, align 8
@FC_FC_FIRST_SEQ = common dso_local global i32 0, align 4
@FC_FC_SEQ_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fc_seq* @fc_exch_seq_send(%struct.fc_lport* %0, %struct.fc_frame.1* %1, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)* %2, void (%struct.fc_seq*, i8*)* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.fc_seq*, align 8
  %8 = alloca %struct.fc_lport*, align 8
  %9 = alloca %struct.fc_frame.1*, align 8
  %10 = alloca void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)*, align 8
  %11 = alloca void (%struct.fc_seq*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fc_exch*, align 8
  %15 = alloca %struct.fc_seq*, align 8
  %16 = alloca %struct.fc_frame_header*, align 8
  %17 = alloca %struct.fc_fcp_pkt*, align 8
  %18 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %8, align 8
  store %struct.fc_frame.1* %1, %struct.fc_frame.1** %9, align 8
  store void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)* %2, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)** %10, align 8
  store void (%struct.fc_seq*, i8*)* %3, void (%struct.fc_seq*, i8*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.fc_seq* null, %struct.fc_seq** %15, align 8
  store %struct.fc_fcp_pkt* null, %struct.fc_fcp_pkt** %17, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %20 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %21 = call %struct.fc_exch* @fc_exch_alloc(%struct.fc_lport* %19, %struct.fc_frame.1* %20)
  store %struct.fc_exch* %21, %struct.fc_exch** %14, align 8
  %22 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %23 = icmp ne %struct.fc_exch* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %26 = call i32 @fc_frame_free(%struct.fc_frame.1* %25)
  store %struct.fc_seq* null, %struct.fc_seq** %7, align 8
  br label %170

27:                                               ; preds = %6
  %28 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %29 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %30 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %34 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.1* %33)
  store %struct.fc_frame_header* %34, %struct.fc_frame_header** %16, align 8
  %35 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %36 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %37 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntoh24(i32 %38)
  %40 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %41 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ntoh24(i32 %42)
  %44 = call i32 @fc_exch_set_addr(%struct.fc_exch* %35, i32 %39, i32 %43)
  %45 = load void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)** %10, align 8
  %46 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %47 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %46, i32 0, i32 0
  store void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)* %45, void (%struct.fc_seq*, %struct.fc_frame.1*, i8*)** %47, align 8
  %48 = load void (%struct.fc_seq*, i8*)*, void (%struct.fc_seq*, i8*)** %11, align 8
  %49 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %50 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %49, i32 0, i32 1
  store void (%struct.fc_seq*, i8*)* %48, void (%struct.fc_seq*, i8*)** %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %53 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %52, i32 0, i32 10
  store i8* %51, i8** %53, align 8
  %54 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %55 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %58 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %60 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %61 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %60, i32 0, i32 8
  store %struct.fc_lport* %59, %struct.fc_lport** %61, align 8
  %62 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %63 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %62, i32 0, i32 7
  store %struct.fc_seq* %63, %struct.fc_seq** %15, align 8
  %64 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %65 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %68 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %70 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ntoh24(i32 %71)
  %73 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %74 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %76 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %77 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %78 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @fc_exch_setup_hdr(%struct.fc_exch* %75, %struct.fc_frame.1* %76, i32 %79)
  %81 = load %struct.fc_seq*, %struct.fc_seq** %15, align 8
  %82 = getelementptr inbounds %struct.fc_seq, %struct.fc_seq* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %86 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %89 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 %87, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %27
  %93 = load %struct.fc_frame_header*, %struct.fc_frame_header** %16, align 8
  %94 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FC_RCTL_DD_UNSOL_CMD, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %100 = call %struct.fc_fcp_pkt* @fr_fsp(%struct.fc_frame.1* %99)
  store %struct.fc_fcp_pkt* %100, %struct.fc_fcp_pkt** %17, align 8
  %101 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %102 = call %struct.fc_fcp_pkt* @fr_fsp(%struct.fc_frame.1* %101)
  %103 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %104 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @fc_fcp_ddp_setup(%struct.fc_fcp_pkt* %102, i64 %105)
  br label %107

107:                                              ; preds = %98, %92, %27
  %108 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %109 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*)** %110, align 8
  %112 = load %struct.fc_lport*, %struct.fc_lport** %8, align 8
  %113 = bitcast %struct.fc_lport* %112 to %struct.fc_lport.0*
  %114 = load %struct.fc_frame.1*, %struct.fc_frame.1** %9, align 8
  %115 = bitcast %struct.fc_frame.1* %114 to %struct.fc_frame*
  %116 = call i32 %111(%struct.fc_lport.0* %113, %struct.fc_frame* %115)
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %152

120:                                              ; preds = %107
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @fc_exch_timer_set_locked(%struct.fc_exch* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* @FC_FC_FIRST_SEQ, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %131 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %135 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @FC_FC_SEQ_INIT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %127
  %141 = load i32, i32* @ESB_ST_SEQ_INIT, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %144 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %140, %127
  %148 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %149 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %148, i32 0, i32 4
  %150 = call i32 @spin_unlock_bh(i32* %149)
  %151 = load %struct.fc_seq*, %struct.fc_seq** %15, align 8
  store %struct.fc_seq* %151, %struct.fc_seq** %7, align 8
  br label %170

152:                                              ; preds = %119
  %153 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %17, align 8
  %154 = icmp ne %struct.fc_fcp_pkt* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %17, align 8
  %157 = call i32 @fc_fcp_ddp_done(%struct.fc_fcp_pkt* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %160 = call i32 @fc_exch_done_locked(%struct.fc_exch* %159)
  store i32 %160, i32* %18, align 4
  %161 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %162 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %161, i32 0, i32 4
  %163 = call i32 @spin_unlock_bh(i32* %162)
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %158
  %167 = load %struct.fc_exch*, %struct.fc_exch** %14, align 8
  %168 = call i32 @fc_exch_delete(%struct.fc_exch* %167)
  br label %169

169:                                              ; preds = %166, %158
  store %struct.fc_seq* null, %struct.fc_seq** %7, align 8
  br label %170

170:                                              ; preds = %169, %147, %24
  %171 = load %struct.fc_seq*, %struct.fc_seq** %7, align 8
  ret %struct.fc_seq* %171
}

declare dso_local %struct.fc_exch* @fc_exch_alloc(%struct.fc_lport*, %struct.fc_frame.1*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.1*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_exch_set_addr(%struct.fc_exch*, i32, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @fc_exch_setup_hdr(%struct.fc_exch*, %struct.fc_frame.1*, i32) #1

declare dso_local %struct.fc_fcp_pkt* @fr_fsp(%struct.fc_frame.1*) #1

declare dso_local i32 @fc_fcp_ddp_setup(%struct.fc_fcp_pkt*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fc_exch_timer_set_locked(%struct.fc_exch*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_fcp_ddp_done(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_exch_done_locked(%struct.fc_exch*) #1

declare dso_local i32 @fc_exch_delete(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
