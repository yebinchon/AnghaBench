; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_bsg_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_bsg_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_bsg_info = type { i16, i32, i32, i32, %struct.fc_lport*, %struct.bsg_job* }
%struct.fc_lport = type { i32 }
%struct.bsg_job = type { i32, %struct.TYPE_6__, %struct.fc_bsg_reply* }
%struct.TYPE_6__ = type { i64 }
%struct.fc_bsg_reply = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fc_frame_header = type { i32, i32 }
%struct.fc_ct_hdr = type { i32 }

@FC_EX_CLOSED = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@FC_SOF_I3 = common dso_local global i64 0, align 8
@FC_FS_ACC = common dso_local global i16 0, align 2
@FC_CTELS_STATUS_OK = common dso_local global i32 0, align 4
@FC_CTELS_STATUS_REJECT = common dso_local global i32 0, align 4
@FC_EOF_T = common dso_local global i64 0, align 8
@FC_FC_LAST_SEQ = common dso_local global i32 0, align 4
@FC_FC_END_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_lport_bsg_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_lport_bsg_resp(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_bsg_info*, align 8
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca %struct.fc_bsg_reply*, align 8
  %10 = alloca %struct.fc_lport*, align 8
  %11 = alloca %struct.fc_frame_header*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i16, align 2
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.fc_bsg_info*
  store %struct.fc_bsg_info* %16, %struct.fc_bsg_info** %7, align 8
  %17 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %18 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %17, i32 0, i32 5
  %19 = load %struct.bsg_job*, %struct.bsg_job** %18, align 8
  store %struct.bsg_job* %19, %struct.bsg_job** %8, align 8
  %20 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %21 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %20, i32 0, i32 2
  %22 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %21, align 8
  store %struct.fc_bsg_reply* %22, %struct.fc_bsg_reply** %9, align 8
  %23 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %24 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %23, i32 0, i32 4
  %25 = load %struct.fc_lport*, %struct.fc_lport** %24, align 8
  store %struct.fc_lport* %25, %struct.fc_lport** %10, align 8
  %26 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %27 = call i64 @IS_ERR(%struct.fc_frame* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %3
  %30 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %31 = call i32 @PTR_ERR(%struct.fc_frame* %30)
  %32 = load i32, i32* @FC_EX_CLOSED, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i64, i64* @ECONNABORTED, align 8
  %37 = sub nsw i64 0, %36
  br label %41

38:                                               ; preds = %29
  %39 = load i64, i64* @ETIMEDOUT, align 8
  %40 = sub nsw i64 0, %39
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i64 [ %37, %35 ], [ %40, %38 ]
  %43 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %44 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %46 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %48 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %49 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %52 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @bsg_job_done(%struct.bsg_job* %47, i64 %50, i64 %53)
  %55 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %56 = call i32 @kfree(%struct.fc_bsg_info* %55)
  br label %186

57:                                               ; preds = %3
  %58 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %59 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %62 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %61)
  store %struct.fc_frame_header* %62, %struct.fc_frame_header** %11, align 8
  %63 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %64 = call i32 @fr_len(%struct.fc_frame* %63)
  %65 = sext i32 %64 to i64
  %66 = sub i64 %65, 8
  store i64 %66, i64* %12, align 8
  %67 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %68 = call i8* @fc_frame_payload_get(%struct.fc_frame* %67, i32 0)
  store i8* %68, i8** %13, align 8
  %69 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %70 = call i64 @fr_sof(%struct.fc_frame* %69)
  %71 = load i64, i64* @FC_SOF_I3, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %119

73:                                               ; preds = %57
  %74 = load %struct.fc_frame_header*, %struct.fc_frame_header** %11, align 8
  %75 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call zeroext i16 @ntohs(i32 %76)
  %78 = icmp ne i16 %77, 0
  br i1 %78, label %119, label %79

79:                                               ; preds = %73
  %80 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %81 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %80, i32 0, i32 0
  %82 = load i16, i16* %81, align 8
  %83 = zext i16 %82 to i32
  %84 = load i16, i16* @FC_FS_ACC, align 2
  %85 = zext i16 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load i8*, i8** %13, align 8
  %89 = bitcast i8* %88 to %struct.fc_ct_hdr*
  %90 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call zeroext i16 @ntohs(i32 %91)
  %93 = zext i16 %92 to i32
  br label %99

94:                                               ; preds = %79
  %95 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %96 = call i64 @fc_frame_payload_op(%struct.fc_frame* %95)
  %97 = trunc i64 %96 to i16
  %98 = zext i16 %97 to i32
  br label %99

99:                                               ; preds = %94, %87
  %100 = phi i32 [ %93, %87 ], [ %98, %94 ]
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %14, align 2
  %102 = load i16, i16* %14, align 2
  %103 = zext i16 %102 to i32
  %104 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %104, i32 0, i32 0
  %106 = load i16, i16* %105, align 8
  %107 = zext i16 %106 to i32
  %108 = icmp eq i32 %103, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @FC_CTELS_STATUS_OK, align 4
  br label %113

111:                                              ; preds = %99
  %112 = load i32, i32* @FC_CTELS_STATUS_REJECT, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %116 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 8
  br label %119

119:                                              ; preds = %113, %73, %57
  %120 = load i8*, i8** %13, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %125, i32 0, i32 2
  %127 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %128 = getelementptr inbounds %struct.fc_bsg_info, %struct.fc_bsg_info* %127, i32 0, i32 1
  %129 = call i64 @fc_copy_buffer_to_sglist(i8* %120, i64 %121, i32 %124, i32* %126, i32* %128, i32* null)
  %130 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %131 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %135 = call i64 @fr_eof(%struct.fc_frame* %134)
  %136 = load i64, i64* @FC_EOF_T, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %180

138:                                              ; preds = %119
  %139 = load %struct.fc_frame_header*, %struct.fc_frame_header** %11, align 8
  %140 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ntoh24(i32 %141)
  %143 = load i32, i32* @FC_FC_LAST_SEQ, align 4
  %144 = load i32, i32* @FC_FC_END_SEQ, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = load i32, i32* @FC_FC_LAST_SEQ, align 4
  %148 = load i32, i32* @FC_FC_END_SEQ, align 4
  %149 = or i32 %147, %148
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %180

151:                                              ; preds = %138
  %152 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %153 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %156 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sgt i64 %154, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %151
  %161 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %162 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %166 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %160, %151
  %168 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %169 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %168, i32 0, i32 1
  store i64 0, i64* %169, align 8
  %170 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %171 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %172 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %175 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @bsg_job_done(%struct.bsg_job* %170, i64 %173, i64 %176)
  %178 = load %struct.fc_bsg_info*, %struct.fc_bsg_info** %7, align 8
  %179 = call i32 @kfree(%struct.fc_bsg_info* %178)
  br label %180

180:                                              ; preds = %167, %138, %119
  %181 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %182 = call i32 @fc_frame_free(%struct.fc_frame* %181)
  %183 = load %struct.fc_lport*, %struct.fc_lport** %10, align 8
  %184 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  br label %186

186:                                              ; preds = %180, %41
  ret void
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i64, i64) #1

declare dso_local i32 @kfree(%struct.fc_bsg_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @fr_len(%struct.fc_frame*) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @fr_sof(%struct.fc_frame*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i64 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local i64 @fc_copy_buffer_to_sglist(i8*, i64, i32, i32*, i32*, i32*) #1

declare dso_local i64 @fr_eof(%struct.fc_frame*) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
