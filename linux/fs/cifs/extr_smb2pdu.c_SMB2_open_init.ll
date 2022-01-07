; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_open_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_SMB2_open_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_tcon = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }
%struct.TCP_Server_Info = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.smb_rqst = type { i32, %struct.kvec* }
%struct.kvec = type { i8*, i32 }
%struct.cifs_open_parms = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.smb2_create_req = type { i64, i8*, %struct.TYPE_6__, i8*, i8*, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.create_context = type { i8* }

@SMB2_CREATE = common dso_local global i32 0, align 4
@CREATE_OPTION_READONLY = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@CREATE_OPTION_SPECIAL = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@IL_IMPERSONATION = common dso_local global i32 0, align 4
@FILE_SHARE_ALL_LE = common dso_local global i32 0, align 4
@CREATE_OPTIONS_MASK = common dso_local global i32 0, align 4
@SHI1005_FLAGS_DFS = common dso_local global i32 0, align 4
@SMB2_FLAGS_DFS_OPERATIONS = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_NONE = common dso_local global i64 0, align 8
@SMB2_GLOBAL_CAP_LEASING = common dso_local global i32 0, align 4
@SMB2_GLOBAL_CAP_DIRECTORY_LEASING = common dso_local global i32 0, align 4
@CREATE_NOT_FILE = common dso_local global i32 0, align 4
@SMB2_OPLOCK_LEVEL_BATCH = common dso_local global i64 0, align 8
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"adding snapshot context\0A\00", align 1
@FILE_CREATE = common dso_local global i32 0, align 4
@ACL_NO_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMB2_open_init(%struct.cifs_tcon* %0, %struct.smb_rqst* %1, i64* %2, %struct.cifs_open_parms* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_tcon*, align 8
  %8 = alloca %struct.smb_rqst*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.cifs_open_parms*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TCP_Server_Info*, align 8
  %13 = alloca %struct.smb2_create_req*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.kvec*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.create_context*, align 8
  %24 = alloca %struct.create_context*, align 8
  %25 = alloca %struct.create_context*, align 8
  %26 = alloca %struct.create_context*, align 8
  %27 = alloca %struct.create_context*, align 8
  store %struct.cifs_tcon* %0, %struct.cifs_tcon** %7, align 8
  store %struct.smb_rqst* %1, %struct.smb_rqst** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.cifs_open_parms* %3, %struct.cifs_open_parms** %10, align 8
  store i8* %4, i8** %11, align 8
  %28 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %29 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %28, i32 0, i32 6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %31, align 8
  store %struct.TCP_Server_Info* %32, %struct.TCP_Server_Info** %12, align 8
  store i32 2, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %33 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %34 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %33, i32 0, i32 1
  %35 = load %struct.kvec*, %struct.kvec** %34, align 8
  store %struct.kvec* %35, %struct.kvec** %19, align 8
  %36 = load i32, i32* @SMB2_CREATE, align 4
  %37 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %38 = bitcast %struct.smb2_create_req** %13 to i8**
  %39 = call i32 @smb2_plain_req_init(i32 %36, %struct.cifs_tcon* %37, i8** %38, i32* %18)
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32, i32* %21, align 4
  store i32 %43, i32* %6, align 4
  br label %435

44:                                               ; preds = %5
  %45 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %46 = bitcast %struct.smb2_create_req* %45 to i8*
  %47 = load %struct.kvec*, %struct.kvec** %19, align 8
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %47, i64 0
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sub i32 %50, 1
  %52 = load %struct.kvec*, %struct.kvec** %19, align 8
  %53 = getelementptr inbounds %struct.kvec, %struct.kvec* %52, i64 0
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 8
  %55 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %56 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CREATE_OPTION_READONLY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = load i32, i32* @ATTR_READONLY, align 4
  %63 = load i32, i32* %15, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %61, %44
  %66 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %67 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CREATE_OPTION_SPECIAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @ATTR_SYSTEM, align 4
  %74 = load i32, i32* %15, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32, i32* @IL_IMPERSONATION, align 4
  %78 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %79 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 8
  %80 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %81 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %85 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %84, i32 0, i32 8
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %89 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @FILE_SHARE_ALL_LE, align 4
  %91 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %92 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %94 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %98 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %100 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CREATE_OPTIONS_MASK, align 4
  %103 = and i32 %101, %102
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %106 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = call i8* @cpu_to_le16(i32 80)
  %108 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %109 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %111 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SHI1005_FLAGS_DFS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %76
  %117 = load i32, i32* @SMB2_FLAGS_DFS_OPERATIONS, align 4
  %118 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %119 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 8
  %123 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %124 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @alloc_path_with_tree_prefix(i8** %20, i32* %16, i32* %22, i32 %125, i8* %126)
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %116
  %131 = load i32, i32* %21, align 4
  store i32 %131, i32* %6, align 4
  br label %435

132:                                              ; preds = %116
  %133 = load i32, i32* %22, align 4
  %134 = mul nsw i32 %133, 2
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %137 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %17, align 4
  %139 = load i8*, i8** %20, align 8
  store i8* %139, i8** %11, align 8
  br label %175

140:                                              ; preds = %76
  %141 = load i8*, i8** %11, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i32, i32* @PATH_MAX, align 4
  %144 = call i32 @UniStrnlen(i32* %142, i32 %143)
  %145 = mul nsw i32 2, %144
  %146 = add nsw i32 %145, 2
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = sub nsw i32 %147, 2
  %149 = call i8* @cpu_to_le16(i32 %148)
  %150 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %151 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = srem i32 %153, 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %140
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @roundup(i32 %157, i32 8)
  store i32 %158, i32* %16, align 4
  br label %159

159:                                              ; preds = %156, %140
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @GFP_KERNEL, align 4
  %162 = call i8* @kzalloc(i32 %160, i32 %161)
  store i8* %162, i8** %20, align 8
  %163 = load i8*, i8** %20, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %159
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %6, align 4
  br label %435

168:                                              ; preds = %159
  %169 = load i8*, i8** %20, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @memcpy(i8* %169, i8* %170, i32 %171)
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %17, align 4
  %174 = load i8*, i8** %20, align 8
  store i8* %174, i8** %11, align 8
  br label %175

175:                                              ; preds = %168, %132
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.kvec*, %struct.kvec** %19, align 8
  %178 = getelementptr inbounds %struct.kvec, %struct.kvec* %177, i64 1
  %179 = getelementptr inbounds %struct.kvec, %struct.kvec* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 8
  %180 = load i8*, i8** %11, align 8
  %181 = load %struct.kvec*, %struct.kvec** %19, align 8
  %182 = getelementptr inbounds %struct.kvec, %struct.kvec* %181, i64 1
  %183 = getelementptr inbounds %struct.kvec, %struct.kvec* %182, i32 0, i32 0
  store i8* %180, i8** %183, align 8
  %184 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %185 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %175
  %189 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %190 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188, %175
  %194 = load i64, i64* @SMB2_OPLOCK_LEVEL_NONE, align 8
  %195 = load i64*, i64** %9, align 8
  store i64 %194, i64* %195, align 8
  br label %196

196:                                              ; preds = %193, %188
  %197 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %198 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @SMB2_GLOBAL_CAP_LEASING, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %196
  %204 = load i64*, i64** %9, align 8
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SMB2_OPLOCK_LEVEL_NONE, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %203, %196
  %209 = load i64*, i64** %9, align 8
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %212 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  br label %248

213:                                              ; preds = %203
  %214 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %215 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @SMB2_GLOBAL_CAP_DIRECTORY_LEASING, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %213
  %221 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %222 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @CREATE_NOT_FILE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load i64*, i64** %9, align 8
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.smb2_create_req*, %struct.smb2_create_req** %13, align 8
  %231 = getelementptr inbounds %struct.smb2_create_req, %struct.smb2_create_req* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  br label %247

232:                                              ; preds = %220, %213
  %233 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %234 = load %struct.kvec*, %struct.kvec** %19, align 8
  %235 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %236 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %235, i32 0, i32 4
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i64*, i64** %9, align 8
  %241 = call i32 @add_lease_context(%struct.TCP_Server_Info* %233, %struct.kvec* %234, i32* %14, i32 %239, i64* %240)
  store i32 %241, i32* %21, align 4
  %242 = load i32, i32* %21, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %232
  %245 = load i32, i32* %21, align 4
  store i32 %245, i32* %6, align 4
  br label %435

246:                                              ; preds = %232
  br label %247

247:                                              ; preds = %246, %227
  br label %248

248:                                              ; preds = %247, %208
  %249 = load i64*, i64** %9, align 8
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @SMB2_OPLOCK_LEVEL_BATCH, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %289

253:                                              ; preds = %248
  %254 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %255 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @SMB2_GLOBAL_CAP_LEASING, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %253
  %261 = load %struct.kvec*, %struct.kvec** %19, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sub i32 %262, 1
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.kvec, %struct.kvec* %261, i64 %264
  %266 = getelementptr inbounds %struct.kvec, %struct.kvec* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = bitcast i8* %267 to %struct.create_context*
  store %struct.create_context* %268, %struct.create_context** %23, align 8
  %269 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %12, align 8
  %270 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %269, i32 0, i32 1
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i8* @cpu_to_le32(i32 %273)
  %275 = load %struct.create_context*, %struct.create_context** %23, align 8
  %276 = getelementptr inbounds %struct.create_context, %struct.create_context* %275, i32 0, i32 0
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %260, %253
  %278 = load %struct.kvec*, %struct.kvec** %19, align 8
  %279 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %280 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %281 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @add_durable_context(%struct.kvec* %278, i32* %14, %struct.cifs_open_parms* %279, i32 %282)
  store i32 %283, i32* %21, align 4
  %284 = load i32, i32* %21, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %277
  %287 = load i32, i32* %21, align 4
  store i32 %287, i32* %6, align 4
  br label %435

288:                                              ; preds = %277
  br label %289

289:                                              ; preds = %288, %248
  %290 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %291 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %327

294:                                              ; preds = %289
  %295 = load i32, i32* %14, align 4
  %296 = icmp ugt i32 %295, 2
  br i1 %296, label %297, label %316

297:                                              ; preds = %294
  %298 = load %struct.kvec*, %struct.kvec** %19, align 8
  %299 = load i32, i32* %14, align 4
  %300 = sub i32 %299, 1
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.kvec, %struct.kvec* %298, i64 %301
  %303 = getelementptr inbounds %struct.kvec, %struct.kvec* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = bitcast i8* %304 to %struct.create_context*
  store %struct.create_context* %305, %struct.create_context** %24, align 8
  %306 = load %struct.kvec*, %struct.kvec** %19, align 8
  %307 = load i32, i32* %14, align 4
  %308 = sub i32 %307, 1
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.kvec, %struct.kvec* %306, i64 %309
  %311 = getelementptr inbounds %struct.kvec, %struct.kvec* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = call i8* @cpu_to_le32(i32 %312)
  %314 = load %struct.create_context*, %struct.create_context** %24, align 8
  %315 = getelementptr inbounds %struct.create_context, %struct.create_context* %314, i32 0, i32 0
  store i8* %313, i8** %315, align 8
  br label %316

316:                                              ; preds = %297, %294
  %317 = load %struct.kvec*, %struct.kvec** %19, align 8
  %318 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %319 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @add_posix_context(%struct.kvec* %317, i32* %14, i32 %320)
  store i32 %321, i32* %21, align 4
  %322 = load i32, i32* %21, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %316
  %325 = load i32, i32* %21, align 4
  store i32 %325, i32* %6, align 4
  br label %435

326:                                              ; preds = %316
  br label %327

327:                                              ; preds = %326, %289
  %328 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %329 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %367

332:                                              ; preds = %327
  %333 = load i32, i32* @FYI, align 4
  %334 = call i32 @cifs_dbg(i32 %333, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %335 = load i32, i32* %14, align 4
  %336 = icmp ugt i32 %335, 2
  br i1 %336, label %337, label %356

337:                                              ; preds = %332
  %338 = load %struct.kvec*, %struct.kvec** %19, align 8
  %339 = load i32, i32* %14, align 4
  %340 = sub i32 %339, 1
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.kvec, %struct.kvec* %338, i64 %341
  %343 = getelementptr inbounds %struct.kvec, %struct.kvec* %342, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  %345 = bitcast i8* %344 to %struct.create_context*
  store %struct.create_context* %345, %struct.create_context** %25, align 8
  %346 = load %struct.kvec*, %struct.kvec** %19, align 8
  %347 = load i32, i32* %14, align 4
  %348 = sub i32 %347, 1
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.kvec, %struct.kvec* %346, i64 %349
  %351 = getelementptr inbounds %struct.kvec, %struct.kvec* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = call i8* @cpu_to_le32(i32 %352)
  %354 = load %struct.create_context*, %struct.create_context** %25, align 8
  %355 = getelementptr inbounds %struct.create_context, %struct.create_context* %354, i32 0, i32 0
  store i8* %353, i8** %355, align 8
  br label %356

356:                                              ; preds = %337, %332
  %357 = load %struct.kvec*, %struct.kvec** %19, align 8
  %358 = load %struct.cifs_tcon*, %struct.cifs_tcon** %7, align 8
  %359 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @add_twarp_context(%struct.kvec* %357, i32* %14, i32 %360)
  store i32 %361, i32* %21, align 4
  %362 = load i32, i32* %21, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %356
  %365 = load i32, i32* %21, align 4
  store i32 %365, i32* %6, align 4
  br label %435

366:                                              ; preds = %356
  br label %367

367:                                              ; preds = %366, %327
  %368 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %369 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @FILE_CREATE, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %407

373:                                              ; preds = %367
  %374 = load %struct.cifs_open_parms*, %struct.cifs_open_parms** %10, align 8
  %375 = getelementptr inbounds %struct.cifs_open_parms, %struct.cifs_open_parms* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* @ACL_NO_MODE, align 4
  %378 = icmp ne i32 %376, %377
  br i1 %378, label %379, label %407

379:                                              ; preds = %373
  %380 = load i32, i32* %14, align 4
  %381 = icmp ugt i32 %380, 2
  br i1 %381, label %382, label %401

382:                                              ; preds = %379
  %383 = load %struct.kvec*, %struct.kvec** %19, align 8
  %384 = load i32, i32* %14, align 4
  %385 = sub i32 %384, 1
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds %struct.kvec, %struct.kvec* %383, i64 %386
  %388 = getelementptr inbounds %struct.kvec, %struct.kvec* %387, i32 0, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = bitcast i8* %389 to %struct.create_context*
  store %struct.create_context* %390, %struct.create_context** %26, align 8
  %391 = load %struct.kvec*, %struct.kvec** %19, align 8
  %392 = load i32, i32* %14, align 4
  %393 = sub i32 %392, 1
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds %struct.kvec, %struct.kvec* %391, i64 %394
  %396 = getelementptr inbounds %struct.kvec, %struct.kvec* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = call i8* @cpu_to_le32(i32 %397)
  %399 = load %struct.create_context*, %struct.create_context** %26, align 8
  %400 = getelementptr inbounds %struct.create_context, %struct.create_context* %399, i32 0, i32 0
  store i8* %398, i8** %400, align 8
  br label %401

401:                                              ; preds = %382, %379
  %402 = load i32, i32* %21, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %401
  %405 = load i32, i32* %21, align 4
  store i32 %405, i32* %6, align 4
  br label %435

406:                                              ; preds = %401
  br label %407

407:                                              ; preds = %406, %373, %367
  %408 = load i32, i32* %14, align 4
  %409 = icmp ugt i32 %408, 2
  br i1 %409, label %410, label %429

410:                                              ; preds = %407
  %411 = load %struct.kvec*, %struct.kvec** %19, align 8
  %412 = load i32, i32* %14, align 4
  %413 = sub i32 %412, 1
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds %struct.kvec, %struct.kvec* %411, i64 %414
  %416 = getelementptr inbounds %struct.kvec, %struct.kvec* %415, i32 0, i32 0
  %417 = load i8*, i8** %416, align 8
  %418 = bitcast i8* %417 to %struct.create_context*
  store %struct.create_context* %418, %struct.create_context** %27, align 8
  %419 = load %struct.kvec*, %struct.kvec** %19, align 8
  %420 = load i32, i32* %14, align 4
  %421 = sub i32 %420, 1
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds %struct.kvec, %struct.kvec* %419, i64 %422
  %424 = getelementptr inbounds %struct.kvec, %struct.kvec* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 8
  %426 = call i8* @cpu_to_le32(i32 %425)
  %427 = load %struct.create_context*, %struct.create_context** %27, align 8
  %428 = getelementptr inbounds %struct.create_context, %struct.create_context* %427, i32 0, i32 0
  store i8* %426, i8** %428, align 8
  br label %429

429:                                              ; preds = %410, %407
  %430 = load %struct.kvec*, %struct.kvec** %19, align 8
  %431 = call i32 @add_query_id_context(%struct.kvec* %430, i32* %14)
  %432 = load i32, i32* %14, align 4
  %433 = load %struct.smb_rqst*, %struct.smb_rqst** %8, align 8
  %434 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %433, i32 0, i32 0
  store i32 %432, i32* %434, align 8
  store i32 0, i32* %6, align 4
  br label %435

435:                                              ; preds = %429, %404, %364, %324, %286, %244, %165, %130, %42
  %436 = load i32, i32* %6, align 4
  ret i32 %436
}

declare dso_local i32 @smb2_plain_req_init(i32, %struct.cifs_tcon*, i8**, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @alloc_path_with_tree_prefix(i8**, i32*, i32*, i32, i8*) #1

declare dso_local i32 @UniStrnlen(i32*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @add_lease_context(%struct.TCP_Server_Info*, %struct.kvec*, i32*, i32, i64*) #1

declare dso_local i32 @add_durable_context(%struct.kvec*, i32*, %struct.cifs_open_parms*, i32) #1

declare dso_local i32 @add_posix_context(%struct.kvec*, i32*, i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @add_twarp_context(%struct.kvec*, i32*, i32) #1

declare dso_local i32 @add_query_id_context(%struct.kvec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
