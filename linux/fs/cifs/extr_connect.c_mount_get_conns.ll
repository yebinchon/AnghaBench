; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_mount_get_conns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_mount_get_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vol = type { i32, i32 }
%struct.cifs_sb_info = type { i32, i32, i32 }
%struct.TCP_Server_Info = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__, i32, i64, %struct.TYPE_9__, %struct.TYPE_12__*, i64, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32 (%struct.cifs_tcon*, %struct.smb_vol*)*, i32 (%struct.cifs_tcon*, %struct.smb_vol*)*, i32 (i32, %struct.cifs_tcon*)* }
%struct.cifs_tcon = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__, i32, i64, %struct.TYPE_9__, %struct.TYPE_12__*, i64, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.cifs_ses = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__, i32, i64, %struct.TYPE_9__, %struct.TYPE_12__*, i64, %struct.TYPE_7__* }

@SMB2_MAX_CREDITS_AVAILABLE = common dso_local global i32 0, align 4
@SMB2_GLOBAL_CAP_PERSISTENT_HANDLES = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"persistent handles not supported by server\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CIFS_MOUNT_POSIX_PATHS = common dso_local global i32 0, align 4
@CifsNeedReconnect = common dso_local global i64 0, align 8
@CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CIFS_MOUNT_RO_CACHE = common dso_local global i32 0, align 4
@FILE_READ_ONLY_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mounted to read only share\0A\00", align 1
@CIFS_MOUNT_RW_CACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"read only mount of RW share\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_vol*, %struct.cifs_sb_info*, i32*, %struct.TCP_Server_Info**, %struct.cifs_ses**, %struct.cifs_tcon**)* @mount_get_conns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_get_conns(%struct.smb_vol* %0, %struct.cifs_sb_info* %1, i32* %2, %struct.TCP_Server_Info** %3, %struct.cifs_ses** %4, %struct.cifs_tcon** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.smb_vol*, align 8
  %9 = alloca %struct.cifs_sb_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TCP_Server_Info**, align 8
  %12 = alloca %struct.cifs_ses**, align 8
  %13 = alloca %struct.cifs_tcon**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TCP_Server_Info*, align 8
  %16 = alloca %struct.cifs_ses*, align 8
  %17 = alloca %struct.cifs_tcon*, align 8
  store %struct.smb_vol* %0, %struct.smb_vol** %8, align 8
  store %struct.cifs_sb_info* %1, %struct.cifs_sb_info** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TCP_Server_Info** %3, %struct.TCP_Server_Info*** %11, align 8
  store %struct.cifs_ses** %4, %struct.cifs_ses*** %12, align 8
  store %struct.cifs_tcon** %5, %struct.cifs_tcon*** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.TCP_Server_Info**, %struct.TCP_Server_Info*** %11, align 8
  store %struct.TCP_Server_Info* null, %struct.TCP_Server_Info** %18, align 8
  %19 = load %struct.cifs_ses**, %struct.cifs_ses*** %12, align 8
  store %struct.cifs_ses* null, %struct.cifs_ses** %19, align 8
  %20 = load %struct.cifs_tcon**, %struct.cifs_tcon*** %13, align 8
  store %struct.cifs_tcon* null, %struct.cifs_tcon** %20, align 8
  %21 = call i32 (...) @get_xid()
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %24 = call %struct.cifs_tcon* @cifs_get_tcp_session(%struct.smb_vol* %23)
  %25 = bitcast %struct.cifs_tcon* %24 to %struct.TCP_Server_Info*
  store %struct.TCP_Server_Info* %25, %struct.TCP_Server_Info** %15, align 8
  %26 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %27 = bitcast %struct.TCP_Server_Info* %26 to %struct.cifs_tcon*
  %28 = call i64 @IS_ERR(%struct.cifs_tcon* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %32 = bitcast %struct.TCP_Server_Info* %31 to %struct.cifs_tcon*
  %33 = call i32 @PTR_ERR(%struct.cifs_tcon* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %230

35:                                               ; preds = %6
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %37 = load %struct.TCP_Server_Info**, %struct.TCP_Server_Info*** %11, align 8
  store %struct.TCP_Server_Info* %36, %struct.TCP_Server_Info** %37, align 8
  %38 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %39 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 20
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %44 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 60000
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %35
  %48 = load i32, i32* @SMB2_MAX_CREDITS_AVAILABLE, align 4
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %50 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %57

51:                                               ; preds = %42
  %52 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %53 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %56 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %59 = bitcast %struct.TCP_Server_Info* %58 to %struct.cifs_tcon*
  %60 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %61 = call %struct.cifs_tcon* @cifs_get_smb_ses(%struct.cifs_tcon* %59, %struct.smb_vol* %60)
  %62 = bitcast %struct.cifs_tcon* %61 to %struct.cifs_ses*
  store %struct.cifs_ses* %62, %struct.cifs_ses** %16, align 8
  %63 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %64 = bitcast %struct.cifs_ses* %63 to %struct.cifs_tcon*
  %65 = call i64 @IS_ERR(%struct.cifs_tcon* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %69 = bitcast %struct.cifs_ses* %68 to %struct.cifs_tcon*
  %70 = call i32 @PTR_ERR(%struct.cifs_tcon* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %230

72:                                               ; preds = %57
  %73 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %74 = load %struct.cifs_ses**, %struct.cifs_ses*** %12, align 8
  store %struct.cifs_ses* %73, %struct.cifs_ses** %74, align 8
  %75 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %76 = getelementptr inbounds %struct.smb_vol, %struct.smb_vol* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %81 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %80, i32 0, i32 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SMB2_GLOBAL_CAP_PERSISTENT_HANDLES, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @VFS, align 4
  %90 = call i32 @cifs_server_dbg(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @EOPNOTSUPP, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %230

93:                                               ; preds = %79, %72
  %94 = load %struct.cifs_ses*, %struct.cifs_ses** %16, align 8
  %95 = bitcast %struct.cifs_ses* %94 to %struct.cifs_tcon*
  %96 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %97 = call %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_tcon* %95, %struct.smb_vol* %96)
  store %struct.cifs_tcon* %97, %struct.cifs_tcon** %17, align 8
  %98 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %99 = call i64 @IS_ERR(%struct.cifs_tcon* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %103 = call i32 @PTR_ERR(%struct.cifs_tcon* %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %7, align 4
  br label %230

105:                                              ; preds = %93
  %106 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %107 = load %struct.cifs_tcon**, %struct.cifs_tcon*** %13, align 8
  store %struct.cifs_tcon* %106, %struct.cifs_tcon** %107, align 8
  %108 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %109 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load i32, i32* @CIFS_MOUNT_POSIX_PATHS, align 4
  %114 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %115 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %105
  %119 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %120 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %119, i32 0, i32 6
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = call i64 @cap_unix(%struct.TYPE_12__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %118
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %128 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %129 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %130 = call i32 @reset_cifs_unix_caps(i32 %126, %struct.cifs_tcon* %127, %struct.cifs_sb_info* %128, %struct.smb_vol* %129)
  %131 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %132 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %131, i32 0, i32 6
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @CifsNeedReconnect, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %124
  %141 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %142 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @le64_to_cpu(i32 %144)
  %146 = load i32, i32* @CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i32, i32* @EACCES, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %7, align 4
  br label %230

152:                                              ; preds = %140, %124
  br label %156

153:                                              ; preds = %118
  %154 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %155 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %154, i32 0, i32 4
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %153, %152
  %157 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %158 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %209, label %161

161:                                              ; preds = %156
  %162 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %163 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32 (i32, %struct.cifs_tcon*)*, i32 (i32, %struct.cifs_tcon*)** %165, align 8
  %167 = icmp ne i32 (i32, %struct.cifs_tcon*)* %166, null
  br i1 %167, label %168, label %209

168:                                              ; preds = %161
  %169 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %170 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i32 (i32, %struct.cifs_tcon*)*, i32 (i32, %struct.cifs_tcon*)** %172, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %177 = call i32 %173(i32 %175, %struct.cifs_tcon* %176)
  %178 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %179 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @CIFS_MOUNT_RO_CACHE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %208

184:                                              ; preds = %168
  %185 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %186 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @FILE_READ_ONLY_DEVICE, align 4
  %190 = call i32 @cpu_to_le32(i32 %189)
  %191 = and i32 %188, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* @VFS, align 4
  %195 = call i32 @cifs_dbg(i32 %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %207

196:                                              ; preds = %184
  %197 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %198 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @CIFS_MOUNT_RW_CACHE, align 4
  %201 = and i32 %199, %200
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load i32, i32* @VFS, align 4
  %205 = call i32 @cifs_dbg(i32 %204, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %206

206:                                              ; preds = %203, %196
  br label %207

207:                                              ; preds = %206, %193
  br label %208

208:                                              ; preds = %207, %168
  br label %209

209:                                              ; preds = %208, %161, %156
  %210 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %211 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %210, i32 0, i32 1
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load i32 (%struct.cifs_tcon*, %struct.smb_vol*)*, i32 (%struct.cifs_tcon*, %struct.smb_vol*)** %213, align 8
  %215 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %216 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %217 = call i32 %214(%struct.cifs_tcon* %215, %struct.smb_vol* %216)
  %218 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %219 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %15, align 8
  %221 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %220, i32 0, i32 1
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32 (%struct.cifs_tcon*, %struct.smb_vol*)*, i32 (%struct.cifs_tcon*, %struct.smb_vol*)** %223, align 8
  %225 = load %struct.cifs_tcon*, %struct.cifs_tcon** %17, align 8
  %226 = load %struct.smb_vol*, %struct.smb_vol** %8, align 8
  %227 = call i32 %224(%struct.cifs_tcon* %225, %struct.smb_vol* %226)
  %228 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %229 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  store i32 0, i32* %7, align 4
  br label %230

230:                                              ; preds = %209, %149, %101, %88, %67, %30
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.cifs_tcon* @cifs_get_tcp_session(%struct.smb_vol*) #1

declare dso_local i64 @IS_ERR(%struct.cifs_tcon*) #1

declare dso_local i32 @PTR_ERR(%struct.cifs_tcon*) #1

declare dso_local %struct.cifs_tcon* @cifs_get_smb_ses(%struct.cifs_tcon*, %struct.smb_vol*) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*) #1

declare dso_local %struct.cifs_tcon* @cifs_get_tcon(%struct.cifs_tcon*, %struct.smb_vol*) #1

declare dso_local i64 @cap_unix(%struct.TYPE_12__*) #1

declare dso_local i32 @reset_cifs_unix_caps(i32, %struct.cifs_tcon*, %struct.cifs_sb_info*, %struct.smb_vol*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
