; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_writev_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_writev_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_writedata = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.TCP_Server_Info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.inode*)*, i32 (%struct.cifs_writedata*, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TCP_Server_Info* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@cifs_writev_complete = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"No writable handle to retry writepages rc=%d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@cifs_writedata_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_writedata*)* @cifs_writev_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_writev_requeue(%struct.cifs_writedata* %0) #0 {
  %2 = alloca %struct.cifs_writedata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_writedata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cifs_writedata* %0, %struct.cifs_writedata** %2, align 8
  store i32 0, i32* %4, align 4
  %14 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %15 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %14, i32 0, i32 6
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.inode* @d_inode(i32 %18)
  store %struct.inode* %19, %struct.inode** %5, align 8
  %20 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %21 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %20, i32 0, i32 6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_7__* @tlink_tcon(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %28, align 8
  store %struct.TCP_Server_Info* %29, %struct.TCP_Server_Info** %6, align 8
  store i32 0, i32* %3, align 4
  %30 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %31 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %252, %1
  %34 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %35 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.inode*)*, i32 (%struct.inode*)** %37, align 8
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call i32 %38(%struct.inode* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = udiv i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %258

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = mul i32 %54, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %57, i32* %12, align 4
  br label %69

58:                                               ; preds = %33
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = call i32 @DIV_ROUND_UP(i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub i32 %64, 1
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = mul i32 %65, %66
  %68 = sub i32 %63, %67
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %58, %53
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @cifs_writev_complete, align 4
  %72 = call %struct.cifs_writedata* @cifs_writedata_alloc(i32 %70, i32 %71)
  store %struct.cifs_writedata* %72, %struct.cifs_writedata** %8, align 8
  %73 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %74 = icmp ne %struct.cifs_writedata* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %258

78:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %115, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %85 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %87, %88
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %94 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %100 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @lock_page(i32 %105)
  %107 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %108 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @clear_page_dirty_for_io(i32 %113)
  br label %115

115:                                              ; preds = %83
  %116 = load i32, i32* %9, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %79

118:                                              ; preds = %79
  %119 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %120 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %123 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %126 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %128 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @page_offset(i32 %131)
  %133 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %134 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %133, i32 0, i32 8
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %137 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %140 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %143 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.inode*, %struct.inode** %5, align 8
  %145 = call i32 @CIFS_I(%struct.inode* %144)
  %146 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %147 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %146, i32 0, i32 6
  %148 = call i32 @cifs_get_writable_file(i32 %145, i32 0, %struct.TYPE_8__** %147)
  store i32 %148, i32* %4, align 4
  %149 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %150 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %149, i32 0, i32 6
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = icmp ne %struct.TYPE_8__* %151, null
  br i1 %152, label %164, label %153

153:                                              ; preds = %118
  %154 = load i32, i32* @VFS, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @cifs_dbg(i32 %154, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %4, align 4
  %158 = call i64 @is_retryable_error(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* @EBADF, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %160, %153
  br label %180

164:                                              ; preds = %118
  %165 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %166 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %165, i32 0, i32 6
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %171 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %170, i32 0, i32 7
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %173 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32 (%struct.cifs_writedata*, i32)*, i32 (%struct.cifs_writedata*, i32)** %175, align 8
  %177 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %178 = load i32, i32* @cifs_writedata_release, align 4
  %179 = call i32 %176(%struct.cifs_writedata* %177, i32 %178)
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %164, %163
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %226, %180
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %229

185:                                              ; preds = %181
  %186 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %187 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %186, i32 0, i32 5
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @unlock_page(i32 %192)
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %225

196:                                              ; preds = %185
  %197 = load i32, i32* %4, align 4
  %198 = call i64 @is_retryable_error(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %225, label %200

200:                                              ; preds = %196
  %201 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %202 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @SetPageError(i32 %207)
  %209 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %210 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @end_page_writeback(i32 %215)
  %217 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %218 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %217, i32 0, i32 5
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @put_page(i32 %223)
  br label %225

225:                                              ; preds = %200, %196, %185
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %9, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %181

229:                                              ; preds = %181
  %230 = load i32, i32* %4, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %229
  %233 = load %struct.cifs_writedata*, %struct.cifs_writedata** %8, align 8
  %234 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %233, i32 0, i32 4
  %235 = load i32, i32* @cifs_writedata_release, align 4
  %236 = call i32 @kref_put(i32* %234, i32 %235)
  %237 = load i32, i32* %4, align 4
  %238 = call i64 @is_retryable_error(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %232
  br label %252

241:                                              ; preds = %232
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %3, align 4
  %244 = add i32 %243, %242
  store i32 %244, i32* %3, align 4
  br label %258

245:                                              ; preds = %229
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %7, align 4
  %248 = sub i32 %247, %246
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %3, align 4
  %251 = add i32 %250, %249
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %245, %240
  %253 = load i32, i32* %3, align 4
  %254 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %255 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %33, label %258

258:                                              ; preds = %252, %241, %75, %50
  br label %259

259:                                              ; preds = %290, %258
  %260 = load i32, i32* %3, align 4
  %261 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %262 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %260, %263
  br i1 %264, label %265, label %293

265:                                              ; preds = %259
  %266 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %267 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %266, i32 0, i32 5
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @SetPageError(i32 %272)
  %274 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %275 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %274, i32 0, i32 5
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %3, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @end_page_writeback(i32 %280)
  %282 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %283 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %282, i32 0, i32 5
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @put_page(i32 %288)
  br label %290

290:                                              ; preds = %265
  %291 = load i32, i32* %3, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %3, align 4
  br label %259

293:                                              ; preds = %259
  %294 = load i32, i32* %4, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %293
  %297 = load i32, i32* %4, align 4
  %298 = call i64 @is_retryable_error(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %296
  %301 = load %struct.inode*, %struct.inode** %5, align 8
  %302 = getelementptr inbounds %struct.inode, %struct.inode* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %4, align 4
  %305 = call i32 @mapping_set_error(i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %300, %296, %293
  %307 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %308 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %307, i32 0, i32 4
  %309 = load i32, i32* @cifs_writedata_release, align 4
  %310 = call i32 @kref_put(i32* %308, i32 %309)
  ret void
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.TYPE_7__* @tlink_tcon(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.cifs_writedata* @cifs_writedata_alloc(i32, i32) #1

declare dso_local i32 @lock_page(i32) #1

declare dso_local i32 @clear_page_dirty_for_io(i32) #1

declare dso_local i32 @page_offset(i32) #1

declare dso_local i32 @cifs_get_writable_file(i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @CIFS_I(%struct.inode*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i64 @is_retryable_error(i32) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @SetPageError(i32) #1

declare dso_local i32 @end_page_writeback(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mapping_set_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
