; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBRead.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_CIFSSMBRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_io_parms = type { i32, i32, i32, i32, %struct.cifs_tcon* }
%struct.cifs_tcon = type { %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_9__, i64, i8*, i8*, i64, i8*, i8* }
%struct.TYPE_9__ = type { i32, i8*, i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.kvec = type { i8*, i64 }
%struct.smb_com_readx_req = type { i64 }

@EACCES = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Reading %d bytes on fid %d\0A\00", align 1
@CAP_LARGE_FILES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SMB_COM_READ_ANDX = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@CIFS_LOG_ERROR = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Send error in read = %d\0A\00", align 1
@CIFSMaxBufSize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"bad length %d for count %d\0A\00", align 1
@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@CIFS_SMALL_BUFFER = common dso_local global i32 0, align 4
@CIFS_LARGE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSSMBRead(i32 %0, %struct.cifs_io_parms* %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_io_parms*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [1 x %struct.kvec], align 16
  %19 = alloca %struct.kvec, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.cifs_tcon*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.smb_com_readx_req*, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_io_parms* %1, %struct.cifs_io_parms** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %30 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %20, align 4
  %32 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %33 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %21, align 4
  %35 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %36 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %22, align 4
  %38 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %39 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %38, i32 0, i32 4
  %40 = load %struct.cifs_tcon*, %struct.cifs_tcon** %39, align 8
  store %struct.cifs_tcon* %40, %struct.cifs_tcon** %23, align 8
  %41 = load %struct.cifs_io_parms*, %struct.cifs_io_parms** %8, align 8
  %42 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %24, align 4
  %44 = load i32, i32* @FYI, align 4
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %21, align 4
  %47 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.cifs_tcon*, %struct.cifs_tcon** %23, align 8
  %49 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CAP_LARGE_FILES, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %5
  store i32 12, i32* %16, align 4
  br label %65

57:                                               ; preds = %5
  store i32 10, i32* %16, align 4
  %58 = load i32, i32* %22, align 4
  %59 = ashr i32 %58, 32
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %261

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i32*, i32** %9, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* @SMB_COM_READ_ANDX, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.cifs_tcon*, %struct.cifs_tcon** %23, align 8
  %70 = bitcast %struct.TYPE_14__** %13 to i8**
  %71 = call i32 @small_smb_init(i32 %67, i32 %68, %struct.cifs_tcon* %69, i8** %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %6, align 4
  br label %261

76:                                               ; preds = %65
  %77 = load i32, i32* %20, align 4
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load i32, i32* %20, align 4
  %83 = ashr i32 %82, 16
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  %88 = load %struct.cifs_tcon*, %struct.cifs_tcon** %23, align 8
  %89 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %76
  %95 = load i32, i32* @ECONNABORTED, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %261

97:                                               ; preds = %76
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  store i32 255, i32* %99, align 8
  %100 = load i32, i32* %21, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %22, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 8
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %16, align 4
  %108 = icmp eq i32 %107, 12
  br i1 %108, label %109, label %115

109:                                              ; preds = %97
  %110 = load i32, i32* %22, align 4
  %111 = ashr i32 %110, 32
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %109, %97
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 6
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* %24, align 4
  %119 = and i32 %118, 65535
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %24, align 4
  %124 = lshr i32 %123, 16
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i32, i32* %16, align 4
  %129 = icmp eq i32 %128, 12
  br i1 %129, label %130, label %133

130:                                              ; preds = %115
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  br label %138

133:                                              ; preds = %115
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %135 = bitcast %struct.TYPE_14__* %134 to %struct.smb_com_readx_req*
  store %struct.smb_com_readx_req* %135, %struct.smb_com_readx_req** %25, align 8
  %136 = load %struct.smb_com_readx_req*, %struct.smb_com_readx_req** %25, align 8
  %137 = getelementptr inbounds %struct.smb_com_readx_req, %struct.smb_com_readx_req* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  br label %138

138:                                              ; preds = %133, %130
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %140 = bitcast %struct.TYPE_14__* %139 to i8*
  %141 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %142 = getelementptr inbounds %struct.kvec, %struct.kvec* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 16
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @be32_to_cpu(i32 %146)
  %148 = add nsw i64 %147, 4
  %149 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %150 = getelementptr inbounds %struct.kvec, %struct.kvec* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.cifs_tcon*, %struct.cifs_tcon** %23, align 8
  %153 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %152, i32 0, i32 1
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %18, i64 0, i64 0
  %156 = load i32, i32* @CIFS_LOG_ERROR, align 4
  %157 = call i32 @SendReceive2(i32 %151, %struct.TYPE_15__* %154, %struct.kvec* %155, i32 1, i32* %17, i32 %156, %struct.kvec* %19)
  store i32 %157, i32* %12, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %159 = call i32 @cifs_small_buf_release(%struct.TYPE_14__* %158)
  %160 = load %struct.cifs_tcon*, %struct.cifs_tcon** %23, align 8
  %161 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = call i32 @cifs_stats_inc(i32* %163)
  %165 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = bitcast i8* %166 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %167, %struct.TYPE_13__** %14, align 8
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %138
  %171 = load i32, i32* @VFS, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  br label %226

174:                                              ; preds = %138
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le16_to_cpu(i32 %177)
  store i32 %178, i32* %26, align 4
  %179 = load i32, i32* %26, align 4
  %180 = shl i32 %179, 16
  store i32 %180, i32* %26, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @le16_to_cpu(i32 %183)
  %185 = load i32, i32* %26, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %26, align 4
  %187 = load i32, i32* %26, align 4
  %188 = load i32*, i32** %9, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* %26, align 4
  %190 = load i32, i32* @CIFSMaxBufSize, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %196, label %192

192:                                              ; preds = %174
  %193 = load i32, i32* %26, align 4
  %194 = load i32, i32* %24, align 4
  %195 = icmp ugt i32 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %192, %174
  %197 = load i32, i32* @FYI, align 4
  %198 = load i32, i32* %26, align 4
  %199 = load i32, i32* %24, align 4
  %200 = call i32 (i32, i8*, i32, ...) @cifs_dbg(i32 %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %198, i32 %199)
  %201 = load i32, i32* @EIO, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %12, align 4
  %203 = load i32*, i32** %9, align 8
  store i32 0, i32* %203, align 4
  br label %225

204:                                              ; preds = %192
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = bitcast i32* %207 to i8*
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @le16_to_cpu(i32 %211)
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %208, i64 %213
  store i8* %214, i8** %15, align 8
  %215 = load i8**, i8*** %10, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %224

218:                                              ; preds = %204
  %219 = load i8**, i8*** %10, align 8
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %15, align 8
  %222 = load i32, i32* %26, align 4
  %223 = call i32 @memcpy(i8* %220, i8* %221, i32 %222)
  br label %224

224:                                              ; preds = %218, %204
  br label %225

225:                                              ; preds = %224, %196
  br label %226

226:                                              ; preds = %225, %170
  %227 = load i8**, i8*** %10, align 8
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = load i32, i32* %17, align 4
  %232 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @free_rsp_buf(i32 %231, i8* %233)
  br label %259

235:                                              ; preds = %226
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* @CIFS_NO_BUFFER, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %258

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = load i8**, i8*** %10, align 8
  store i8* %241, i8** %242, align 8
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load i32, i32* @CIFS_SMALL_BUFFER, align 4
  %248 = load i32*, i32** %11, align 8
  store i32 %247, i32* %248, align 4
  br label %257

249:                                              ; preds = %239
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i32, i32* @CIFS_LARGE_BUFFER, align 4
  %255 = load i32*, i32** %11, align 8
  store i32 %254, i32* %255, align 4
  br label %256

256:                                              ; preds = %253, %249
  br label %257

257:                                              ; preds = %256, %246
  br label %258

258:                                              ; preds = %257, %235
  br label %259

259:                                              ; preds = %258, %230
  %260 = load i32, i32* %12, align 4
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %259, %94, %74, %61
  %262 = load i32, i32* %6, align 4
  ret i32 %262
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @small_smb_init(i32, i32, %struct.cifs_tcon*, i8**) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @SendReceive2(i32, %struct.TYPE_15__*, %struct.kvec*, i32, i32*, i32, %struct.kvec*) #1

declare dso_local i32 @cifs_small_buf_release(%struct.TYPE_14__*) #1

declare dso_local i32 @cifs_stats_inc(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free_rsp_buf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
