; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_writepages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i64 }
%struct.cifs_sb_info = type { i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TCP_Server_Info*, i32, i32*, %struct.cifs_credits*)* }
%struct.cifs_credits = type { i32 }
%struct.cifs_writedata = type { i32, i32*, %struct.cifs_credits, %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TCP_Server_Info* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cifs_writedata_release = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No writable handle in writepages rc=%d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @cifs_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca %struct.TCP_Server_Info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cifs_writedata*, align 8
  %15 = alloca %struct.cifsFileInfo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.cifs_credits, align 4
  %27 = alloca %struct.cifs_credits*, align 8
  %28 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %29 = load %struct.address_space*, %struct.address_space** %4, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 1
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  store %struct.inode* %31, %struct.inode** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.cifs_sb_info* @CIFS_SB(i32 %34)
  store %struct.cifs_sb_info* %35, %struct.cifs_sb_info** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.cifsFileInfo* null, %struct.cifsFileInfo** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %36 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %37 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.address_space*, %struct.address_space** %4, align 8
  %43 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %44 = call i32 @generic_writepages(%struct.address_space* %42, %struct.writeback_control* %43)
  store i32 %44, i32* %3, align 4
  br label %370

45:                                               ; preds = %2
  %46 = call i32 (...) @get_xid()
  store i32 %46, i32* %18, align 4
  %47 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %48 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.address_space*, %struct.address_space** %4, align 8
  %53 = getelementptr inbounds %struct.address_space, %struct.address_space* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  store i32 -1, i32* %12, align 4
  br label %78

55:                                               ; preds = %45
  %56 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %57 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %62 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %12, align 4
  %66 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %67 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %55
  %71 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %72 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @LLONG_MAX, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %70, %55
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %80 = call %struct.TYPE_6__* @cifs_sb_master_tcon(%struct.cifs_sb_info* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %83, align 8
  store %struct.TCP_Server_Info* %84, %struct.TCP_Server_Info** %8, align 8
  br label %85

85:                                               ; preds = %337, %78
  br label %86

86:                                               ; preds = %329, %302, %167, %85
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp sle i32 %90, %91
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i1 [ false, %86 ], [ %92, %89 ]
  br i1 %94, label %95, label %331

95:                                               ; preds = %93
  store i32 0, i32* %23, align 4
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %25, align 4
  store %struct.cifs_credits* %26, %struct.cifs_credits** %27, align 8
  store i32 0, i32* %28, align 4
  %97 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %98 = icmp ne %struct.cifsFileInfo* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %101 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %100)
  br label %102

102:                                              ; preds = %99, %95
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = call i32 @CIFS_I(%struct.inode* %103)
  %105 = call i32 @cifs_get_writable_file(i32 %104, i32 0, %struct.cifsFileInfo** %15)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %28, align 4
  br label %110

110:                                              ; preds = %108, %102
  %111 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %112 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TCP_Server_Info*, i32, i32*, %struct.cifs_credits*)*, i32 (%struct.TCP_Server_Info*, i32, i32*, %struct.cifs_credits*)** %114, align 8
  %116 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %117 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %118 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cifs_credits*, %struct.cifs_credits** %27, align 8
  %121 = call i32 %115(%struct.TCP_Server_Info* %116, i32 %119, i32* %22, %struct.cifs_credits* %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  store i32 1, i32* %9, align 4
  br label %331

125:                                              ; preds = %110
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* @PAGE_SIZE, align 4
  %128 = udiv i32 %126, %127
  %129 = sub i32 %128, 1
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @min(i32 %129, i32 %132)
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %24, align 4
  %136 = load %struct.address_space*, %struct.address_space** %4, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call %struct.cifs_writedata* @wdata_alloc_and_fillpages(i32 %135, %struct.address_space* %136, i32 %137, i32* %13, i32* %21)
  store %struct.cifs_writedata* %138, %struct.cifs_writedata** %14, align 8
  %139 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %140 = icmp ne %struct.cifs_writedata* %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %125
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %16, align 4
  store i32 1, i32* %9, align 4
  %144 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %145 = load %struct.cifs_credits*, %struct.cifs_credits** %27, align 8
  %146 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %144, %struct.cifs_credits* %145, i32 0)
  br label %331

147:                                              ; preds = %125
  %148 = load i32, i32* %21, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %152 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %151, i32 0, i32 0
  %153 = load i32, i32* @cifs_writedata_release, align 4
  %154 = call i32 @kref_put(i32* %152, i32 %153)
  %155 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %156 = load %struct.cifs_credits*, %struct.cifs_credits** %27, align 8
  %157 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %155, %struct.cifs_credits* %156, i32 0)
  br label %331

158:                                              ; preds = %147
  %159 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %160 = load i32, i32* %21, align 4
  %161 = load %struct.address_space*, %struct.address_space** %4, align 8
  %162 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @wdata_prepare_pages(%struct.cifs_writedata* %159, i32 %160, %struct.address_space* %161, %struct.writeback_control* %162, i32 %163, i32* %13, i32* %23, i32* %9)
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %20, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %158
  %168 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %169 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %168, i32 0, i32 0
  %170 = load i32, i32* @cifs_writedata_release, align 4
  %171 = call i32 @kref_put(i32* %169, i32 %170)
  %172 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %173 = load %struct.cifs_credits*, %struct.cifs_credits** %27, align 8
  %174 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %172, %struct.cifs_credits* %173, i32 0)
  br label %86

175:                                              ; preds = %158
  %176 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %177 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %176, i32 0, i32 2
  %178 = bitcast %struct.cifs_credits* %177 to i8*
  %179 = bitcast %struct.cifs_credits* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %178, i8* align 4 %179, i64 4, i1 false)
  %180 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %181 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %182 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %181, i32 0, i32 3
  store %struct.cifsFileInfo* %180, %struct.cifsFileInfo** %182, align 8
  store %struct.cifsFileInfo* null, %struct.cifsFileInfo** %15, align 8
  %183 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %184 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %183, i32 0, i32 3
  %185 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %184, align 8
  %186 = icmp ne %struct.cifsFileInfo* %185, null
  br i1 %186, label %200, label %187

187:                                              ; preds = %175
  %188 = load i32, i32* @VFS, align 4
  %189 = load i32, i32* %28, align 4
  %190 = call i32 @cifs_dbg(i32 %188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %28, align 4
  %192 = call i64 @is_retryable_error(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* %28, align 4
  store i32 %195, i32* %16, align 4
  br label %199

196:                                              ; preds = %187
  %197 = load i32, i32* @EBADF, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %16, align 4
  br label %199

199:                                              ; preds = %196, %194
  br label %206

200:                                              ; preds = %175
  %201 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %202 = load i32, i32* %20, align 4
  %203 = load %struct.address_space*, %struct.address_space** %4, align 8
  %204 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %205 = call i32 @wdata_send_pages(%struct.cifs_writedata* %201, i32 %202, %struct.address_space* %203, %struct.writeback_control* %204)
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %200, %199
  store i32 0, i32* %19, align 4
  br label %207

207:                                              ; preds = %220, %206
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %20, align 4
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %207
  %212 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %213 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %19, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @unlock_page(i32 %218)
  br label %220

220:                                              ; preds = %211
  %221 = load i32, i32* %19, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %19, align 4
  br label %207

223:                                              ; preds = %207
  %224 = load i32, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %287

226:                                              ; preds = %223
  %227 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %8, align 8
  %228 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %229 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %228, i32 0, i32 2
  %230 = call i32 @add_credits_and_wake_if(%struct.TCP_Server_Info* %227, %struct.cifs_credits* %229, i32 0)
  store i32 0, i32* %19, align 4
  br label %231

231:                                              ; preds = %275, %226
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %20, align 4
  %234 = icmp ult i32 %232, %233
  br i1 %234, label %235, label %278

235:                                              ; preds = %231
  %236 = load i32, i32* %16, align 4
  %237 = call i64 @is_retryable_error(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %235
  %240 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %241 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %242 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %19, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %240, i32 %247)
  br label %258

249:                                              ; preds = %235
  %250 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %251 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %19, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @SetPageError(i32 %256)
  br label %258

258:                                              ; preds = %249, %239
  %259 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %260 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %19, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @end_page_writeback(i32 %265)
  %267 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %268 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %19, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @put_page(i32 %273)
  br label %275

275:                                              ; preds = %258
  %276 = load i32, i32* %19, align 4
  %277 = add i32 %276, 1
  store i32 %277, i32* %19, align 4
  br label %231

278:                                              ; preds = %231
  %279 = load i32, i32* %16, align 4
  %280 = call i64 @is_retryable_error(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %278
  %283 = load %struct.address_space*, %struct.address_space** %4, align 8
  %284 = load i32, i32* %16, align 4
  %285 = call i32 @mapping_set_error(%struct.address_space* %283, i32 %284)
  br label %286

286:                                              ; preds = %282, %278
  br label %287

287:                                              ; preds = %286, %223
  %288 = load %struct.cifs_writedata*, %struct.cifs_writedata** %14, align 8
  %289 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %288, i32 0, i32 0
  %290 = load i32, i32* @cifs_writedata_release, align 4
  %291 = call i32 @kref_put(i32* %289, i32 %290)
  %292 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %293 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @WB_SYNC_ALL, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %287
  %298 = load i32, i32* %16, align 4
  %299 = load i32, i32* @EAGAIN, align 4
  %300 = sub nsw i32 0, %299
  %301 = icmp eq i32 %298, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = load i32, i32* %25, align 4
  store i32 %303, i32* %13, align 4
  br label %86

304:                                              ; preds = %297, %287
  %305 = load i32, i32* %16, align 4
  %306 = call i64 @is_interrupt_error(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %304
  store i32 1, i32* %9, align 4
  br label %331

309:                                              ; preds = %304
  %310 = load i32, i32* %16, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %309
  %313 = load i32, i32* %17, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  %316 = load i32, i32* %16, align 4
  store i32 %316, i32* %17, align 4
  br label %317

317:                                              ; preds = %315, %312, %309
  %318 = load i32, i32* %20, align 4
  %319 = zext i32 %318 to i64
  %320 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %321 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = sub nsw i64 %322, %319
  store i64 %323, i64* %321, align 8
  %324 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %325 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = icmp sle i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %317
  store i32 1, i32* %9, align 4
  br label %329

329:                                              ; preds = %328, %317
  %330 = load i32, i32* %23, align 4
  store i32 %330, i32* %13, align 4
  br label %86

331:                                              ; preds = %308, %150, %141, %124, %93
  %332 = load i32, i32* %10, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %9, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %334
  store i32 1, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %85

338:                                              ; preds = %334, %331
  %339 = load i32, i32* %17, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* %17, align 4
  store i32 %342, i32* %16, align 4
  br label %343

343:                                              ; preds = %341, %338
  %344 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %345 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %343
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %360

351:                                              ; preds = %348
  %352 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %353 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = icmp sgt i64 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %351, %343
  %357 = load i32, i32* %13, align 4
  %358 = load %struct.address_space*, %struct.address_space** %4, align 8
  %359 = getelementptr inbounds %struct.address_space, %struct.address_space* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 8
  br label %360

360:                                              ; preds = %356, %351, %348
  %361 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %362 = icmp ne %struct.cifsFileInfo* %361, null
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %15, align 8
  %365 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %364)
  br label %366

366:                                              ; preds = %363, %360
  %367 = load i32, i32* %18, align 4
  %368 = call i32 @free_xid(i32 %367)
  %369 = load i32, i32* %16, align 4
  store i32 %369, i32* %3, align 4
  br label %370

370:                                              ; preds = %366, %41
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @generic_writepages(%struct.address_space*, %struct.writeback_control*) #1

declare dso_local i32 @get_xid(...) #1

declare dso_local %struct.TYPE_6__* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

declare dso_local i32 @cifs_get_writable_file(i32, i32, %struct.cifsFileInfo**) #1

declare dso_local i32 @CIFS_I(%struct.inode*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.cifs_writedata* @wdata_alloc_and_fillpages(i32, %struct.address_space*, i32, i32*, i32*) #1

declare dso_local i32 @add_credits_and_wake_if(%struct.TCP_Server_Info*, %struct.cifs_credits*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wdata_prepare_pages(%struct.cifs_writedata*, i32, %struct.address_space*, %struct.writeback_control*, i32, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i64 @is_retryable_error(i32) #1

declare dso_local i32 @wdata_send_pages(%struct.cifs_writedata*, i32, %struct.address_space*, %struct.writeback_control*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, i32) #1

declare dso_local i32 @SetPageError(i32) #1

declare dso_local i32 @end_page_writeback(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #1

declare dso_local i64 @is_interrupt_error(i32) #1

declare dso_local i32 @free_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
