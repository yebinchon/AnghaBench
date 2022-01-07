; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb311_posix_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_smb311_posix_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cifs_tcon = type { i32, i32, i64, i32, %struct.cifs_ses* }
%struct.cifs_ses = type { i32, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32, i32, i32* }
%struct.smb2_create_req = type { i32, i8*, %struct.TYPE_2__, i8*, i8*, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.smb2_create_rsp = type { i32, i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mkdir\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SMB2_CREATE = common dso_local global i32 0, align 4
@CIFS_TRANSFORM_REQ = common dso_local global i32 0, align 4
@IL_IMPERSONATION = common dso_local global i32 0, align 4
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_SHARE_ALL_LE = common dso_local global i32 0, align 4
@FILE_CREATE = common dso_local global i32 0, align 4
@CREATE_NOT_FILE = common dso_local global i32 0, align 4
@SHI1005_FLAGS_DFS = common dso_local global i32 0, align 4
@SMB2_FLAGS_DFS_OPERATIONS = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i32 0, align 4
@SMB2_CREATE_HE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb311_posix_mkdir(i32 %0, %struct.inode* %1, i32 %2, %struct.cifs_tcon* %3, i8* %4, %struct.cifs_sb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cifs_sb_info*, align 8
  %14 = alloca %struct.smb_rqst, align 8
  %15 = alloca %struct.smb2_create_req*, align 8
  %16 = alloca %struct.smb2_create_rsp*, align 8
  %17 = alloca %struct.cifs_ses*, align 8
  %18 = alloca [3 x %struct.kvec], align 16
  %19 = alloca %struct.kvec, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.cifs_tcon* %3, %struct.cifs_tcon** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.cifs_sb_info* %5, %struct.cifs_sb_info** %13, align 8
  store %struct.smb2_create_rsp* null, %struct.smb2_create_rsp** %16, align 8
  %32 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %33 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %32, i32 0, i32 4
  %34 = load %struct.cifs_ses*, %struct.cifs_ses** %33, align 8
  store %struct.cifs_ses* %34, %struct.cifs_ses** %17, align 8
  %35 = bitcast %struct.kvec* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 24, i1 false)
  store i8* null, i8** %22, align 8
  store i32 0, i32* %24, align 4
  store i32 2, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i8* null, i8** %27, align 8
  store i32 0, i32* %28, align 4
  store i8* null, i8** %30, align 8
  %36 = load i32, i32* @FYI, align 4
  %37 = call i32 @cifs_dbg(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** %12, align 8
  %39 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %13, align 8
  %40 = call i8* @cifs_convert_path_to_utf16(i8* %38, %struct.cifs_sb_info* %39)
  store i8* %40, i8** %30, align 8
  %41 = load i8*, i8** %30, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %6
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %278

46:                                               ; preds = %6
  %47 = load %struct.cifs_ses*, %struct.cifs_ses** %17, align 8
  %48 = icmp ne %struct.cifs_ses* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.cifs_ses*, %struct.cifs_ses** %17, align 8
  %51 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %24, align 4
  br label %274

57:                                               ; preds = %49
  %58 = load i32, i32* @SMB2_CREATE, align 4
  %59 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %60 = bitcast %struct.smb2_create_req** %15 to i8**
  %61 = call i32 @smb2_plain_req_init(i32 %58, %struct.cifs_tcon* %59, i8** %60, i32* %29)
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %274

65:                                               ; preds = %57
  %66 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %67 = call i64 @smb3_encryption_required(%struct.cifs_tcon* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @CIFS_TRANSFORM_REQ, align 4
  %71 = load i32, i32* %28, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %28, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* @IL_IMPERSONATION, align 4
  %75 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %76 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %80 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %26, align 4
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %84 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @FILE_SHARE_ALL_LE, align 4
  %86 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %87 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @FILE_CREATE, align 4
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %91 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @CREATE_NOT_FILE, align 4
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %95 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %97 = bitcast %struct.smb2_create_req* %96 to i8*
  %98 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %18, i64 0, i64 0
  %99 = getelementptr inbounds %struct.kvec, %struct.kvec* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 16
  %100 = load i32, i32* %29, align 4
  %101 = sub i32 %100, 1
  %102 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %18, i64 0, i64 0
  %103 = getelementptr inbounds %struct.kvec, %struct.kvec* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = call i8* @cpu_to_le16(i32 80)
  %105 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %106 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %108 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SHI1005_FLAGS_DFS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %138

113:                                              ; preds = %73
  %114 = load i32, i32* @SMB2_FLAGS_DFS_OPERATIONS, align 4
  %115 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %116 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 8
  %120 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %121 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %30, align 8
  %124 = call i32 @alloc_path_with_tree_prefix(i8** %22, i32* %23, i32* %31, i32 %122, i8* %123)
  store i32 %124, i32* %24, align 4
  %125 = load i32, i32* %24, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  br label %271

128:                                              ; preds = %113
  %129 = load i32, i32* %31, align 4
  %130 = mul nsw i32 %129, 2
  %131 = call i8* @cpu_to_le16(i32 %130)
  %132 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %133 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* %23, align 4
  store i32 %134, i32* %21, align 4
  %135 = load i8*, i8** %30, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = load i8*, i8** %22, align 8
  store i8* %137, i8** %30, align 8
  br label %174

138:                                              ; preds = %73
  %139 = load i8*, i8** %30, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = load i32, i32* @PATH_MAX, align 4
  %142 = call i32 @UniStrnlen(i32* %140, i32 %141)
  %143 = mul nsw i32 2, %142
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %21, align 4
  %145 = load i32, i32* %21, align 4
  %146 = sub nsw i32 %145, 2
  %147 = call i8* @cpu_to_le16(i32 %146)
  %148 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %149 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %21, align 4
  %151 = srem i32 %150, 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %173

153:                                              ; preds = %138
  %154 = load i32, i32* %21, align 4
  %155 = call i32 @roundup(i32 %154, i32 8)
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i8* @kzalloc(i32 %156, i32 %157)
  store i8* %158, i8** %22, align 8
  %159 = load i8*, i8** %22, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %153
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %24, align 4
  br label %271

164:                                              ; preds = %153
  %165 = load i8*, i8** %22, align 8
  %166 = load i8*, i8** %30, align 8
  %167 = load i32, i32* %21, align 4
  %168 = call i32 @memcpy(i8* %165, i8* %166, i32 %167)
  %169 = load i32, i32* %23, align 4
  store i32 %169, i32* %21, align 4
  %170 = load i8*, i8** %30, align 8
  %171 = call i32 @kfree(i8* %170)
  %172 = load i8*, i8** %22, align 8
  store i8* %172, i8** %30, align 8
  br label %173

173:                                              ; preds = %164, %138
  br label %174

174:                                              ; preds = %173, %128
  %175 = load i32, i32* %21, align 4
  %176 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %18, i64 0, i64 1
  %177 = getelementptr inbounds %struct.kvec, %struct.kvec* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 8
  %178 = load i8*, i8** %30, align 8
  %179 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %18, i64 0, i64 1
  %180 = getelementptr inbounds %struct.kvec, %struct.kvec* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load i32, i32* @SMB2_OPLOCK_LEVEL_NONE, align 4
  %182 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %183 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %185 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %174
  %189 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %18, i64 0, i64 0
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @add_posix_context(%struct.kvec* %189, i32* %25, i32 %190)
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %24, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %271

195:                                              ; preds = %188
  %196 = load i32, i32* %25, align 4
  %197 = sub i32 %196, 1
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %18, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.kvec, %struct.kvec* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  store i8* %201, i8** %27, align 8
  br label %202

202:                                              ; preds = %195, %174
  %203 = call i32 @memset(%struct.smb_rqst* %14, i32 0, i32 16)
  %204 = getelementptr inbounds [3 x %struct.kvec], [3 x %struct.kvec]* %18, i64 0, i64 0
  %205 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %14, i32 0, i32 1
  store %struct.kvec* %204, %struct.kvec** %205, align 8
  %206 = load i32, i32* %25, align 4
  %207 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %14, i32 0, i32 0
  store i32 %206, i32* %207, align 8
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %210 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.cifs_ses*, %struct.cifs_ses** %17, align 8
  %213 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @CREATE_NOT_FILE, align 4
  %216 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %217 = call i32 @trace_smb3_posix_mkdir_enter(i32 %208, i32 %211, i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.cifs_ses*, %struct.cifs_ses** %17, align 8
  %220 = load i32, i32* %28, align 4
  %221 = call i32 @cifs_send_recv(i32 %218, %struct.cifs_ses* %219, %struct.smb_rqst* %14, i32* %20, i32 %220, %struct.kvec* %19)
  store i32 %221, i32* %24, align 4
  %222 = load i32, i32* %24, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %202
  %225 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %226 = load i32, i32* @SMB2_CREATE_HE, align 4
  %227 = call i32 @cifs_stats_fail_inc(%struct.cifs_tcon* %225, i32 %226)
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %230 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.cifs_ses*, %struct.cifs_ses** %17, align 8
  %233 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @CREATE_NOT_FILE, align 4
  %236 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %237 = load i32, i32* %24, align 4
  %238 = call i32 @trace_smb3_posix_mkdir_err(i32 %228, i32 %231, i32 %234, i32 %235, i32 %236, i32 %237)
  br label %265

239:                                              ; preds = %202
  %240 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = bitcast i8* %241 to %struct.smb2_create_rsp*
  store %struct.smb2_create_rsp* %242, %struct.smb2_create_rsp** %16, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %16, align 8
  %245 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %248 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.cifs_ses*, %struct.cifs_ses** %17, align 8
  %251 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @CREATE_NOT_FILE, align 4
  %254 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %255 = call i32 @trace_smb3_posix_mkdir_done(i32 %243, i32 %246, i32 %249, i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %258 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %16, align 8
  %259 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %16, align 8
  %262 = getelementptr inbounds %struct.smb2_create_rsp, %struct.smb2_create_rsp* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @SMB2_close(i32 %256, %struct.cifs_tcon* %257, i32 %260, i32 %263)
  br label %265

265:                                              ; preds = %239, %224
  %266 = load i32, i32* %20, align 4
  %267 = load %struct.smb2_create_rsp*, %struct.smb2_create_rsp** %16, align 8
  %268 = call i32 @free_rsp_buf(i32 %266, %struct.smb2_create_rsp* %267)
  %269 = load i8*, i8** %27, align 8
  %270 = call i32 @kfree(i8* %269)
  br label %271

271:                                              ; preds = %265, %194, %161, %127
  %272 = load %struct.smb2_create_req*, %struct.smb2_create_req** %15, align 8
  %273 = call i32 @cifs_small_buf_release(%struct.smb2_create_req* %272)
  br label %274

274:                                              ; preds = %271, %64, %54
  %275 = load i8*, i8** %30, align 8
  %276 = call i32 @kfree(i8* %275)
  %277 = load i32, i32* %24, align 4
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %274, %43
  %279 = load i32, i32* %7, align 4
  ret i32 %279
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #2

declare dso_local i8* @cifs_convert_path_to_utf16(i8*, %struct.cifs_sb_info*) #2

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #2

declare dso_local i64 @smb3_encryption_required(%struct.cifs_tcon*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @alloc_path_with_tree_prefix(i8**, i32*, i32*, i32, i8*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @UniStrnlen(i32*, i32) #2

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @add_posix_context(%struct.kvec*, i32*, i32) #2

declare dso_local i32 @memset(%struct.smb_rqst*, i32, i32) #2

declare dso_local i32 @trace_smb3_posix_mkdir_enter(i32, i32, i32, i32, i32) #2

declare dso_local i32 @cifs_send_recv(i32, %struct.cifs_ses*, %struct.smb_rqst*, i32*, i32, %struct.kvec*) #2

declare dso_local i32 @cifs_stats_fail_inc(%struct.cifs_tcon*, i32) #2

declare dso_local i32 @trace_smb3_posix_mkdir_err(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @trace_smb3_posix_mkdir_done(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @SMB2_close(i32, %struct.cifs_tcon*, i32, i32) #2

declare dso_local i32 @free_rsp_buf(i32, %struct.smb2_create_rsp*) #2

declare dso_local i32 @cifs_small_buf_release(%struct.smb2_create_req*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
