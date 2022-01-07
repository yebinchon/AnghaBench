; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_SendReceiveBlockingLock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_SendReceiveBlockingLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { %struct.cifs_ses* }
%struct.cifs_ses = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i64, i32, i32, i32 }
%struct.smb_hdr = type { i64, i32 }
%struct.mid_q_entry = type { i64, i32, i32, i32 }
%struct.kvec = type { i32, %struct.smb_hdr* }
%struct.smb_rqst = type { i32, %struct.kvec* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Null smb session\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Null tcp session\0A\00", align 1
@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@MAX_CIFS_HDR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Illegal length, greater than maximum frame, %d\0A\00", align 1
@CIFS_BLOCKING_OP = common dso_local global i32 0, align 4
@MID_REQUEST_SUBMITTED = common dso_local global i64 0, align 8
@CifsGood = common dso_local global i64 0, align 8
@CifsNew = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@SMB_COM_TRANSACTION2 = common dso_local global i64 0, align 8
@ENOLCK = common dso_local global i32 0, align 4
@GlobalMid_Lock = common dso_local global i32 0, align 4
@DeleteMidQEntry = common dso_local global i32 0, align 4
@MID_RESPONSE_RECEIVED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Bad MID state?\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendReceiveBlockingLock(i32 %0, %struct.cifs_tcon* %1, %struct.smb_hdr* %2, %struct.smb_hdr* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_tcon*, align 8
  %9 = alloca %struct.smb_hdr*, align 8
  %10 = alloca %struct.smb_hdr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mid_q_entry*, align 8
  %15 = alloca %struct.cifs_ses*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.kvec, align 8
  %18 = alloca %struct.smb_rqst, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TCP_Server_Info*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.cifs_tcon* %1, %struct.cifs_tcon** %8, align 8
  store %struct.smb_hdr* %2, %struct.smb_hdr** %9, align 8
  store %struct.smb_hdr* %3, %struct.smb_hdr** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @be32_to_cpu(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i32 0, i32 0
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i32 0, i32 1
  %28 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  store %struct.smb_hdr* %28, %struct.smb_hdr** %27, align 8
  %29 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %18, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %18, i32 0, i32 1
  store %struct.kvec* %17, %struct.kvec** %30, align 8
  %31 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %32 = icmp eq %struct.cifs_tcon* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %5
  %34 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %35 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %34, i32 0, i32 0
  %36 = load %struct.cifs_ses*, %struct.cifs_ses** %35, align 8
  %37 = icmp eq %struct.cifs_ses* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33, %5
  %39 = load i32, i32* @VFS, align 4
  %40 = call i32 @cifs_dbg(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %310

43:                                               ; preds = %33
  %44 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %45 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %44, i32 0, i32 0
  %46 = load %struct.cifs_ses*, %struct.cifs_ses** %45, align 8
  store %struct.cifs_ses* %46, %struct.cifs_ses** %15, align 8
  %47 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %48 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %47, i32 0, i32 0
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %48, align 8
  store %struct.TCP_Server_Info* %49, %struct.TCP_Server_Info** %20, align 8
  %50 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %51 = icmp eq %struct.TCP_Server_Info* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i32, i32* @VFS, align 4
  %54 = call i32 @cifs_dbg(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %310

57:                                               ; preds = %43
  %58 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %59 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CifsExiting, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %310

66:                                               ; preds = %57
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @CIFSMaxBufSize, align 4
  %69 = load i32, i32* @MAX_CIFS_HDR_SIZE, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %70, 4
  %72 = icmp ugt i32 %67, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @VFS, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %310

79:                                               ; preds = %66
  %80 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %81 = load i32, i32* @CIFS_BLOCKING_OP, align 4
  %82 = call i32 @wait_for_free_request(%struct.TCP_Server_Info* %80, i32 %81, i32* %19)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %310

87:                                               ; preds = %79
  %88 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %89 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %88, i32 0, i32 3
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.cifs_ses*, %struct.cifs_ses** %15, align 8
  %92 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %93 = call i32 @allocate_mid(%struct.cifs_ses* %91, %struct.smb_hdr* %92, %struct.mid_q_entry** %14)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %98 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %97, i32 0, i32 3
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %310

101:                                              ; preds = %87
  %102 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %103 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %104 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %105 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %104, i32 0, i32 3
  %106 = call i32 @cifs_sign_smb(%struct.smb_hdr* %102, %struct.TCP_Server_Info* %103, i32* %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %111 = call i32 @cifs_delete_mid(%struct.mid_q_entry* %110)
  %112 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %113 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %112, i32 0, i32 3
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %6, align 4
  br label %310

116:                                              ; preds = %101
  %117 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %118 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %119 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %121 = call i32 @cifs_in_send_inc(%struct.TCP_Server_Info* %120)
  %122 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %123 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @smb_send(%struct.TCP_Server_Info* %122, %struct.smb_hdr* %123, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %127 = call i32 @cifs_in_send_dec(%struct.TCP_Server_Info* %126)
  %128 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %129 = call i32 @cifs_save_when_sent(%struct.mid_q_entry* %128)
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %116
  %133 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %134 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 2
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132, %116
  %138 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %139 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %138, i32 0, i32 3
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %145 = call i32 @cifs_delete_mid(%struct.mid_q_entry* %144)
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %6, align 4
  br label %310

147:                                              ; preds = %137
  %148 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %149 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %152 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %147
  %157 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %158 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @CifsGood, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %164 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @CifsNew, align 8
  %167 = icmp ne i64 %165, %166
  br label %168

168:                                              ; preds = %162, %156
  %169 = phi i1 [ false, %156 ], [ %167, %162 ]
  br label %170

170:                                              ; preds = %168, %147
  %171 = phi i1 [ true, %147 ], [ %169, %168 ]
  %172 = zext i1 %171 to i32
  %173 = call i32 @wait_event_interruptible(i32 %150, i32 %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @ERESTARTSYS, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %256

178:                                              ; preds = %170
  %179 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %180 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %256

184:                                              ; preds = %178
  %185 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %186 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CifsGood, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %192 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @CifsNew, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %256

196:                                              ; preds = %190, %184
  %197 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %198 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SMB_COM_TRANSACTION2, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %196
  %203 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %204 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %205 = call i32 @send_cancel(%struct.TCP_Server_Info* %203, %struct.smb_rqst* %18, %struct.mid_q_entry* %204)
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %210 = call i32 @cifs_delete_mid(%struct.mid_q_entry* %209)
  %211 = load i32, i32* %12, align 4
  store i32 %211, i32* %6, align 4
  br label %310

212:                                              ; preds = %202
  br label %231

213:                                              ; preds = %196
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.cifs_tcon*, %struct.cifs_tcon** %8, align 8
  %216 = load %struct.smb_hdr*, %struct.smb_hdr** %9, align 8
  %217 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %218 = call i32 @send_lock_cancel(i32 %214, %struct.cifs_tcon* %215, %struct.smb_hdr* %216, %struct.smb_hdr* %217)
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %213
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* @ENOLCK, align 4
  %224 = sub nsw i32 0, %223
  %225 = icmp ne i32 %222, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %228 = call i32 @cifs_delete_mid(%struct.mid_q_entry* %227)
  %229 = load i32, i32* %12, align 4
  store i32 %229, i32* %6, align 4
  br label %310

230:                                              ; preds = %221, %213
  br label %231

231:                                              ; preds = %230, %212
  %232 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %233 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %234 = call i32 @wait_for_response(%struct.TCP_Server_Info* %232, %struct.mid_q_entry* %233)
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %255

237:                                              ; preds = %231
  %238 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %239 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %240 = call i32 @send_cancel(%struct.TCP_Server_Info* %238, %struct.smb_rqst* %18, %struct.mid_q_entry* %239)
  %241 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %242 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %243 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @MID_REQUEST_SUBMITTED, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %253

247:                                              ; preds = %237
  %248 = load i32, i32* @DeleteMidQEntry, align 4
  %249 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %250 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 4
  %251 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  %252 = load i32, i32* %12, align 4
  store i32 %252, i32* %6, align 4
  br label %310

253:                                              ; preds = %237
  %254 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  br label %255

255:                                              ; preds = %253, %231
  store i32 1, i32* %13, align 4
  br label %256

256:                                              ; preds = %255, %190, %178, %170
  %257 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %258 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %259 = call i32 @cifs_sync_mid_result(%struct.mid_q_entry* %257, %struct.TCP_Server_Info* %258)
  store i32 %259, i32* %12, align 4
  %260 = load i32, i32* %12, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %6, align 4
  br label %310

264:                                              ; preds = %256
  %265 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %266 = icmp eq %struct.smb_hdr* %265, null
  br i1 %266, label %273, label %267

267:                                              ; preds = %264
  %268 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %269 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @MID_RESPONSE_RECEIVED, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %267, %264
  %274 = load i32, i32* @EIO, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %12, align 4
  %276 = load i32, i32* @VFS, align 4
  %277 = call i32 (i32, i8*, ...) @cifs_tcon_dbg(i32 %276, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %295

278:                                              ; preds = %267
  %279 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %280 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @get_rfc1002_length(i32 %281)
  %283 = load i32*, i32** %11, align 8
  store i32 %282, i32* %283, align 4
  %284 = load %struct.smb_hdr*, %struct.smb_hdr** %10, align 8
  %285 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %286 = getelementptr inbounds %struct.mid_q_entry, %struct.mid_q_entry* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = load i32*, i32** %11, align 8
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 4
  %291 = call i32 @memcpy(%struct.smb_hdr* %284, i32 %287, i32 %290)
  %292 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %293 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %20, align 8
  %294 = call i32 @cifs_check_receive(%struct.mid_q_entry* %292, %struct.TCP_Server_Info* %293, i32 0)
  store i32 %294, i32* %12, align 4
  br label %295

295:                                              ; preds = %278, %273
  %296 = load %struct.mid_q_entry*, %struct.mid_q_entry** %14, align 8
  %297 = call i32 @cifs_delete_mid(%struct.mid_q_entry* %296)
  %298 = load i32, i32* %13, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %295
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* @EACCES, align 4
  %303 = sub nsw i32 0, %302
  %304 = icmp eq i32 %301, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load i32, i32* @ERESTARTSYS, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %6, align 4
  br label %310

308:                                              ; preds = %300, %295
  %309 = load i32, i32* %12, align 4
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %308, %305, %262, %247, %226, %208, %143, %109, %96, %85, %73, %63, %52, %38
  %311 = load i32, i32* %6, align 4
  ret i32 %311
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @cifs_tcon_dbg(i32, i8*, ...) #1

declare dso_local i32 @wait_for_free_request(%struct.TCP_Server_Info*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @allocate_mid(%struct.cifs_ses*, %struct.smb_hdr*, %struct.mid_q_entry**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cifs_sign_smb(%struct.smb_hdr*, %struct.TCP_Server_Info*, i32*) #1

declare dso_local i32 @cifs_delete_mid(%struct.mid_q_entry*) #1

declare dso_local i32 @cifs_in_send_inc(%struct.TCP_Server_Info*) #1

declare dso_local i32 @smb_send(%struct.TCP_Server_Info*, %struct.smb_hdr*, i32) #1

declare dso_local i32 @cifs_in_send_dec(%struct.TCP_Server_Info*) #1

declare dso_local i32 @cifs_save_when_sent(%struct.mid_q_entry*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @send_cancel(%struct.TCP_Server_Info*, %struct.smb_rqst*, %struct.mid_q_entry*) #1

declare dso_local i32 @send_lock_cancel(i32, %struct.cifs_tcon*, %struct.smb_hdr*, %struct.smb_hdr*) #1

declare dso_local i32 @wait_for_response(%struct.TCP_Server_Info*, %struct.mid_q_entry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_sync_mid_result(%struct.mid_q_entry*, %struct.TCP_Server_Info*) #1

declare dso_local i32 @get_rfc1002_length(i32) #1

declare dso_local i32 @memcpy(%struct.smb_hdr*, i32, i32) #1

declare dso_local i32 @cifs_check_receive(%struct.mid_q_entry*, %struct.TCP_Server_Info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
