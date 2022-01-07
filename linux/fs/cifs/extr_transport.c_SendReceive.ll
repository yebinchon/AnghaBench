; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_SendReceive.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_SendReceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_credits = type { i32, i32 }
%struct.cifs_ses = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i64, i32, i32 }
%struct.smb_hdr = type { i32 }
%struct.mid_q_entry = type { i64, i32, i32, i32 }
%struct.kvec = type { i32, %struct.smb_hdr* }
%struct.smb_rqst = type { i32, %struct.kvec* }

@__const.SendReceive.credits = private unnamed_addr constant %struct.cifs_credits { i32 1, i32 0 }, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Null smb session\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Null tcp session\0A\00", align 1
@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@MAX_CIFS_HDR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Illegal length, greater than maximum frame, %d\0A\00", align 1
@MID_REQUEST_SUBMITTED = common dso_local global i64 0, align 8
@GlobalMid_Lock = common dso_local global i32 0, align 4
@DeleteMidQEntry = common dso_local global i32 0, align 4
@MID_RESPONSE_RECEIVED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Bad MID state?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendReceive(i32 %0, %struct.cifs_ses* %1, %struct.smb_hdr* %2, %struct.smb_hdr* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_ses*, align 8
  %10 = alloca %struct.smb_hdr*, align 8
  %11 = alloca %struct.smb_hdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mid_q_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.kvec, align 8
  %18 = alloca %struct.smb_rqst, align 8
  %19 = alloca %struct.cifs_credits, align 4
  %20 = alloca %struct.TCP_Server_Info*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %9, align 8
  store %struct.smb_hdr* %2, %struct.smb_hdr** %10, align 8
  store %struct.smb_hdr* %3, %struct.smb_hdr** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %22 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i32 0, i32 0
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i32 0, i32 1
  %28 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  store %struct.smb_hdr* %28, %struct.smb_hdr** %27, align 8
  %29 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %18, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %18, i32 0, i32 1
  store %struct.kvec* %17, %struct.kvec** %30, align 8
  %31 = bitcast %struct.cifs_credits* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 bitcast (%struct.cifs_credits* @__const.SendReceive.credits to i8*), i64 8, i1 false)
  %32 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %33 = icmp eq %struct.cifs_ses* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = load i32, i32* @VFS, align 4
  %36 = call i32 @cifs_dbg(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %217

39:                                               ; preds = %6
  %40 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %41 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %40, i32 0, i32 0
  %42 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %41, align 8
  store %struct.TCP_Server_Info* %42, %struct.TCP_Server_Info** %20, align 8
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %44 = icmp eq %struct.TCP_Server_Info* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @VFS, align 4
  %47 = call i32 @cifs_dbg(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %217

50:                                               ; preds = %39
  %51 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %52 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CifsExiting, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %217

59:                                               ; preds = %50
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @CIFSMaxBufSize, align 4
  %62 = load i32, i32* @MAX_CIFS_HDR_SIZE, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 4
  %65 = icmp ugt i32 %60, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @VFS, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 (i32, i8*, ...) @cifs_server_dbg(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %217

72:                                               ; preds = %59
  %73 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %74 = load i32, i32* %13, align 4
  %75 = getelementptr inbounds %struct.cifs_credits, %struct.cifs_credits* %19, i32 0, i32 1
  %76 = call i32 @wait_for_free_request(%struct.TCP_Server_Info* %73, i32 %74, i32* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %7, align 4
  br label %217

81:                                               ; preds = %72
  %82 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %83 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %82, i32 0, i32 2
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %86 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %87 = call i32 @allocate_mid(%struct.cifs_ses* %85, %struct.smb_hdr* %86, %struct.mid_q_entry** %15)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load %struct.cifs_ses*, %struct.cifs_ses** %9, align 8
  %92 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %91, i32 0, i32 0
  %93 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %92, align 8
  %94 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %93, i32 0, i32 2
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %97 = call i32 @add_credits(%struct.TCP_Server_Info* %96, %struct.cifs_credits* %19, i32 0)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %7, align 4
  br label %217

99:                                               ; preds = %81
  %100 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %101 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %102 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %103 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %102, i32 0, i32 3
  %104 = call i32 @cifs_sign_smb(%struct.smb_hdr* %100, %struct.TCP_Server_Info* %101, i32* %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %109 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %108, i32 0, i32 2
  %110 = call i32 @mutex_unlock(i32* %109)
  br label %211

111:                                              ; preds = %99
  %112 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %113 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %114 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %116 = call i32 @cifs_in_send_inc(%struct.TCP_Server_Info* %115)
  %117 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %118 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @smb_send(%struct.TCP_Server_Info* %117, %struct.smb_hdr* %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %122 = call i32 @cifs_in_send_dec(%struct.TCP_Server_Info* %121)
  %123 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %124 = call i32 @cifs_save_when_sent(%struct.mid_q_entry* %123)
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %111
  %128 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %129 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 2
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %127, %111
  %133 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %134 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %133, i32 0, i32 2
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %211

139:                                              ; preds = %132
  %140 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %141 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %142 = call i32 @wait_for_response(%struct.TCP_Server_Info* %140, %struct.mid_q_entry* %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %139
  %146 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %147 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %148 = call i32 @send_cancel(%struct.TCP_Server_Info* %146, %struct.smb_rqst* %18, %struct.mid_q_entry* %147)
  %149 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %150 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %151 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %145
  %156 = load i32, i32* @DeleteMidQEntry, align 4
  %157 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %158 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %160 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %161 = call i32 @add_credits(%struct.TCP_Server_Info* %160, %struct.cifs_credits* %19, i32 0)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %7, align 4
  br label %217

163:                                              ; preds = %145
  %164 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  br label %165

165:                                              ; preds = %163, %139
  %166 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %167 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %168 = call i32 @cifs_sync_mid_result(%struct.mid_q_entry* %166, %struct.TCP_Server_Info* %167)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %173 = call i32 @add_credits(%struct.TCP_Server_Info* %172, %struct.cifs_credits* %19, i32 0)
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %7, align 4
  br label %217

175:                                              ; preds = %165
  %176 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %177 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %175
  %181 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %182 = icmp ne %struct.smb_hdr* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %185 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @MID_RESPONSE_RECEIVED, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %183, %180, %175
  %190 = load i32, i32* @EIO, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* @VFS, align 4
  %193 = call i32 (i32, i8*, ...) @cifs_server_dbg(i32 %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %211

194:                                              ; preds = %183
  %195 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %196 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @get_rfc1002_length(i32 %197)
  %199 = load i32*, i32** %12, align 8
  store i32 %198, i32* %199, align 4
  %200 = load %struct.smb_hdr*, %struct.smb_hdr** %11, align 8
  %201 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %202 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** %12, align 8
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 4
  %207 = call i32 @memcpy(%struct.smb_hdr* %200, i32 %203, i32 %206)
  %208 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %209 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %210 = call i32 @cifs_check_receive(%struct.mid_q_entry* %208, %struct.TCP_Server_Info* %209, i32 0)
  store i32 %210, i32* %14, align 4
  br label %211

211:                                              ; preds = %194, %189, %138, %107
  %212 = load %struct.mid_q_entry*, %struct.mid_q_entry** %15, align 8
  %213 = call i32 @cifs_delete_mid(%struct.mid_q_entry* %212)
  %214 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %215 = call i32 @add_credits(%struct.TCP_Server_Info* %214, %struct.cifs_credits* %19, i32 0)
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %211, %171, %155, %90, %79, %66, %56, %45, %34
  %218 = load i32, i32* %7, align 4
  ret i32 %218
}

declare dso_local i32 @be32_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, ...) #1

declare dso_local i32 @wait_for_free_request(%struct.TCP_Server_Info*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @allocate_mid(%struct.cifs_ses*, %struct.smb_hdr*, %struct.mid_q_entry**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @add_credits(%struct.TCP_Server_Info*, %struct.cifs_credits*, i32) #1

declare dso_local i32 @cifs_sign_smb(%struct.smb_hdr*, %struct.TCP_Server_Info*, i32*) #1

declare dso_local i32 @cifs_in_send_inc(%struct.TCP_Server_Info*) #1

declare dso_local i32 @smb_send(%struct.TCP_Server_Info*, %struct.smb_hdr*, i32) #1

declare dso_local i32 @cifs_in_send_dec(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_save_when_sent(%struct.mid_q_entry*) #1

declare dso_local i32 @wait_for_response(%struct.TCP_Server_Info*, %struct.mid_q_entry*) #1

declare dso_local i32 @send_cancel(%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_sync_mid_result(%struct.mid_q_entry*, %struct.TCP_Server_Info*) #1

declare dso_local i32 @get_rfc1002_length(i32) #1

declare dso_local i32 @memcpy(%struct.smb_hdr*, i32, i32) #1

declare dso_local i32 @cifs_check_receive(%struct.mid_q_entry*, %struct.TCP_Server_Info*, i32) #1

declare dso_local i32 @cifs_delete_mid(%struct.mid_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
