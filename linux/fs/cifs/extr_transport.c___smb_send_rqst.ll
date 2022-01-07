; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c___smb_send_rqst.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c___smb_send_rqst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, %struct.TYPE_2__*, i64, %struct.socket* }
%struct.TYPE_2__ = type { i64 }
%struct.socket = type { i32 }
%struct.smb_rqst = type { i32, i32, i32*, %struct.kvec* }
%struct.kvec = type { i32, i32* }
%struct.msghdr = type { i32 }
%struct.bio_vec = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"signal is pending before sending any data\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_CORK = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Sending smb: smb_len=%u\0A\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"signal is pending after attempt to send\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"partial send (wanted=%u sent=%zu): terminating session\0A\00", align 1
@CifsNeedReconnect = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Error %d sending data on socket to server\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i32, %struct.smb_rqst*)* @__smb_send_rqst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smb_send_rqst(%struct.TCP_Server_Info* %0, i32 %1, %struct.smb_rqst* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_rqst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.socket*, align 8
  %20 = alloca %struct.msghdr, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.kvec, align 8
  %24 = alloca %struct.bio_vec, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.smb_rqst* %2, %struct.smb_rqst** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %16, align 8
  %25 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %26 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %25, i32 0, i32 5
  %27 = load %struct.socket*, %struct.socket** %26, align 8
  store %struct.socket* %27, %struct.socket** %19, align 8
  store i32 1, i32* %21, align 4
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %29 = call i64 @cifs_rdma_enabled(%struct.TCP_Server_Info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %33 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.smb_rqst*, %struct.smb_rqst** %7, align 8
  %40 = call i32 @smbd_send(%struct.TCP_Server_Info* %37, i32 %38, %struct.smb_rqst* %39)
  store i32 %40, i32* %8, align 4
  br label %272

41:                                               ; preds = %31, %3
  %42 = load %struct.socket*, %struct.socket** %19, align 8
  %43 = icmp eq %struct.socket* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %291

47:                                               ; preds = %41
  %48 = load i32, i32* @current, align 4
  %49 = call i64 @signal_pending(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @FYI, align 4
  %53 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINTR, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %291

56:                                               ; preds = %47
  %57 = load %struct.socket*, %struct.socket** %19, align 8
  %58 = load i32, i32* @SOL_TCP, align 4
  %59 = load i32, i32* @TCP_CORK, align 4
  %60 = bitcast i32* %21 to i8*
  %61 = call i32 @kernel_setsockopt(%struct.socket* %57, i32 %58, i32 %59, i8* %60, i32 4)
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %77, %56
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %68 = load %struct.smb_rqst*, %struct.smb_rqst** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %68, i64 %70
  %72 = call i64 @smb_rqst_len(%struct.TCP_Server_Info* %67, %struct.smb_rqst* %71)
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %13, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @cpu_to_be32(i32 %81)
  store i32 %82, i32* %22, align 4
  %83 = call i32 @sigfillset(i32* %14)
  %84 = load i32, i32* @SIG_BLOCK, align 4
  %85 = call i32 @sigprocmask(i32 %84, i32* %14, i32* %15)
  %86 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %87 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i32 0, i32 0
  store i32 4, i32* %93, align 8
  %94 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i32 0, i32 1
  store i32* %22, i32** %94, align 8
  %95 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 0
  %96 = load i32, i32* @WRITE, align 4
  %97 = call i32 @iov_iter_kvec(i32* %95, i32 %96, %struct.kvec* %23, i32 1, i64 4)
  %98 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %99 = call i32 @smb_send_kvec(%struct.TCP_Server_Info* %98, %struct.msghdr* %20, i64* %17)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %227

103:                                              ; preds = %92
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %16, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %16, align 8
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 4
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %103, %80
  %110 = load i32, i32* @FYI, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %223, %109
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %226

117:                                              ; preds = %113
  %118 = load %struct.smb_rqst*, %struct.smb_rqst** %7, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %118, i64 %120
  %122 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %121, i32 0, i32 3
  %123 = load %struct.kvec*, %struct.kvec** %122, align 8
  store %struct.kvec* %123, %struct.kvec** %9, align 8
  %124 = load %struct.smb_rqst*, %struct.smb_rqst** %7, align 8
  %125 = load i32, i32* %13, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %124, i64 %126
  %128 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %10, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %12, align 4
  br label %130

130:                                              ; preds = %157, %117
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %130
  %135 = load %struct.kvec*, %struct.kvec** %9, align 8
  %136 = load i32, i32* %12, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.kvec, %struct.kvec* %135, i64 %137
  %139 = getelementptr inbounds %struct.kvec, %struct.kvec* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.kvec*, %struct.kvec** %9, align 8
  %142 = load i32, i32* %12, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.kvec, %struct.kvec* %141, i64 %143
  %145 = getelementptr inbounds %struct.kvec, %struct.kvec* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @dump_smb(i32* %140, i32 %146)
  %148 = load %struct.kvec*, %struct.kvec** %9, align 8
  %149 = load i32, i32* %12, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.kvec, %struct.kvec* %148, i64 %150
  %152 = getelementptr inbounds %struct.kvec, %struct.kvec* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %18, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %18, align 8
  br label %157

157:                                              ; preds = %134
  %158 = load i32, i32* %12, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %130

160:                                              ; preds = %130
  %161 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 0
  %162 = load i32, i32* @WRITE, align 4
  %163 = load %struct.kvec*, %struct.kvec** %9, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i64, i64* %18, align 8
  %166 = call i32 @iov_iter_kvec(i32* %161, i32 %162, %struct.kvec* %163, i32 %164, i64 %165)
  %167 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %168 = call i32 @smb_send_kvec(%struct.TCP_Server_Info* %167, %struct.msghdr* %20, i64* %17)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %227

172:                                              ; preds = %160
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %16, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %16, align 8
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %219, %172
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.smb_rqst*, %struct.smb_rqst** %7, align 8
  %179 = load i32, i32* %13, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %178, i64 %180
  %182 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ult i32 %177, %183
  br i1 %184, label %185, label %222

185:                                              ; preds = %176
  %186 = load %struct.smb_rqst*, %struct.smb_rqst** %7, align 8
  %187 = load i32, i32* %13, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %186, i64 %188
  %190 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %24, i32 0, i32 2
  store i32 %195, i32* %196, align 4
  %197 = load %struct.smb_rqst*, %struct.smb_rqst** %7, align 8
  %198 = load i32, i32* %13, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %197, i64 %199
  %201 = load i32, i32* %12, align 4
  %202 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %24, i32 0, i32 0
  %203 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %24, i32 0, i32 1
  %204 = call i32 @rqst_page_get_length(%struct.smb_rqst* %200, i32 %201, i32* %202, i32* %203)
  %205 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i32 0, i32 0
  %206 = load i32, i32* @WRITE, align 4
  %207 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %24, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @iov_iter_bvec(i32* %205, i32 %206, %struct.bio_vec* %24, i32 1, i32 %208)
  %210 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %211 = call i32 @smb_send_kvec(%struct.TCP_Server_Info* %210, %struct.msghdr* %20, i64* %17)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %185
  br label %222

215:                                              ; preds = %185
  %216 = load i64, i64* %17, align 8
  %217 = load i64, i64* %16, align 8
  %218 = add i64 %217, %216
  store i64 %218, i64* %16, align 8
  br label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %12, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %176

222:                                              ; preds = %214, %176
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %13, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %13, align 4
  br label %113

226:                                              ; preds = %113
  br label %227

227:                                              ; preds = %226, %171, %102
  %228 = load i32, i32* @SIG_SETMASK, align 4
  %229 = call i32 @sigprocmask(i32 %228, i32* %15, i32* null)
  %230 = load i32, i32* @current, align 4
  %231 = call i64 @signal_pending(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %227
  %234 = load i64, i64* %16, align 8
  %235 = load i32, i32* %11, align 4
  %236 = zext i32 %235 to i64
  %237 = icmp ne i64 %234, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load i32, i32* @FYI, align 4
  %240 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %239, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %241 = load i32, i32* @EINTR, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %238, %233, %227
  store i32 0, i32* %21, align 4
  %244 = load %struct.socket*, %struct.socket** %19, align 8
  %245 = load i32, i32* @SOL_TCP, align 4
  %246 = load i32, i32* @TCP_CORK, align 4
  %247 = bitcast i32* %21 to i8*
  %248 = call i32 @kernel_setsockopt(%struct.socket* %244, i32 %245, i32 %246, i8* %247, i32 4)
  %249 = load i64, i64* %16, align 8
  %250 = icmp ugt i64 %249, 0
  br i1 %250, label %251, label %271

251:                                              ; preds = %243
  %252 = load i64, i64* %16, align 8
  %253 = load i32, i32* %11, align 4
  %254 = zext i32 %253 to i64
  %255 = icmp ne i64 %252, %254
  br i1 %255, label %256, label %271

256:                                              ; preds = %251
  %257 = load i32, i32* @FYI, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load i64, i64* %16, align 8
  %260 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %257, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %258, i64 %259)
  %261 = load i32, i32* @CifsNeedReconnect, align 4
  %262 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %263 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %262, i32 0, i32 2
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %265 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %268 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @trace_smb3_partial_send_reconnect(i32 %266, i32 %269)
  br label %271

271:                                              ; preds = %256, %251, %243
  br label %272

272:                                              ; preds = %271, %36
  %273 = load i32, i32* %8, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %272
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* @EINTR, align 4
  %278 = sub nsw i32 0, %277
  %279 = icmp ne i32 %276, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load i32, i32* @VFS, align 4
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @cifs_server_dbg(i32 %281, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %282)
  br label %289

284:                                              ; preds = %275, %272
  %285 = load i32, i32* %8, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  store i32 0, i32* %8, align 4
  br label %288

288:                                              ; preds = %287, %284
  br label %289

289:                                              ; preds = %288, %280
  %290 = load i32, i32* %8, align 4
  store i32 %290, i32* %4, align 4
  br label %291

291:                                              ; preds = %289, %51, %44
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i64 @cifs_rdma_enabled(%struct.TCP_Server_Info*) #1

declare dso_local i32 @smbd_send(%struct.TCP_Server_Info*, i32, %struct.smb_rqst*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i64 @smb_rqst_len(%struct.TCP_Server_Info*, %struct.smb_rqst*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i64) #1

declare dso_local i32 @smb_send_kvec(%struct.TCP_Server_Info*, %struct.msghdr*, i64*) #1

declare dso_local i32 @dump_smb(i32*, i32) #1

declare dso_local i32 @rqst_page_get_length(%struct.smb_rqst*, i32, i32*, i32*) #1

declare dso_local i32 @iov_iter_bvec(i32*, i32, %struct.bio_vec*, i32, i32) #1

declare dso_local i32 @trace_smb3_partial_send_reconnect(i32, i32) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
