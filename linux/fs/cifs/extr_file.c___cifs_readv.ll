; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c___cifs_readv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c___cifs_readv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32, %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32 }
%struct.iov_iter = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cifs_aio_ctx = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.iov_iter, i32, %struct.kiocb*, i32 }

@ITER_KVEC = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"use non-direct cifs_user_readv for kvec I/O\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"attempting read on write only file instance\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@cifs_aio_ctx_release = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*, i32)* @__cifs_readv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cifs_readv(%struct.kiocb* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca %struct.cifsFileInfo*, align 8
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cifs_aio_ctx*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 1
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %21 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %27 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ITER_KVEC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @FYI, align 4
  %34 = call i32 @cifs_dbg(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %25, %3
  %36 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %37 = call i64 @iov_iter_count(%struct.iov_iter* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %218

41:                                               ; preds = %35
  %42 = load %struct.file*, %struct.file** %9, align 8
  %43 = call %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file* %42)
  store %struct.cifs_sb_info* %43, %struct.cifs_sb_info** %10, align 8
  %44 = load %struct.file*, %struct.file** %9, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 1
  %46 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %45, align 8
  store %struct.cifsFileInfo* %46, %struct.cifsFileInfo** %11, align 8
  %47 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %48 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.cifs_tcon* @tlink_tcon(i32 %49)
  store %struct.cifs_tcon* %50, %struct.cifs_tcon** %12, align 8
  %51 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %52 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %41
  %62 = load i32, i32* @ENOSYS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %218

64:                                               ; preds = %41
  %65 = load %struct.file*, %struct.file** %9, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @O_ACCMODE, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @O_WRONLY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @FYI, align 4
  %74 = call i32 @cifs_dbg(i32 %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %64
  %76 = call %struct.cifs_aio_ctx* (...) @cifs_aio_ctx_alloc()
  store %struct.cifs_aio_ctx* %76, %struct.cifs_aio_ctx** %16, align 8
  %77 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %78 = icmp ne %struct.cifs_aio_ctx* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %218

82:                                               ; preds = %75
  %83 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %84 = call i32 @cifsFileInfo_get(%struct.cifsFileInfo* %83)
  %85 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %86 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %85, i32 0, i32 12
  store i32 %84, i32* %86, align 8
  %87 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %88 = call i32 @is_sync_kiocb(%struct.kiocb* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %92 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %93 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %92, i32 0, i32 11
  store %struct.kiocb* %91, %struct.kiocb** %93, align 8
  br label %94

94:                                               ; preds = %90, %82
  %95 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %96 = call i64 @iter_is_iovec(%struct.iov_iter* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %100 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %101
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %107 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 4
  %108 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %109 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %111 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %110, i32 0, i32 9
  %112 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %113 = bitcast %struct.iov_iter* %111 to i8*
  %114 = bitcast %struct.iov_iter* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 4 %114, i64 4, i1 false)
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %117 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  br label %135

118:                                              ; preds = %101
  %119 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %120 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %121 = load i32, i32* @READ, align 4
  %122 = call i32 @setup_aio_ctx_iter(%struct.cifs_aio_ctx* %119, %struct.iov_iter* %120, i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %127 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %126, i32 0, i32 5
  %128 = load i32, i32* @cifs_aio_ctx_release, align 4
  %129 = call i32 @kref_put(i32* %127, i32 %128)
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %4, align 4
  br label %218

131:                                              ; preds = %118
  %132 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %133 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %8, align 8
  br label %135

135:                                              ; preds = %131, %104
  %136 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %137 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %136, i32 0, i32 6
  %138 = call i32 @mutex_lock(i32* %137)
  %139 = load i32, i32* %15, align 4
  %140 = load i64, i64* %8, align 8
  %141 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %11, align 8
  %142 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %143 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %144 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %143, i32 0, i32 8
  %145 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %146 = call i32 @cifs_send_async_read(i32 %139, i64 %140, %struct.cifsFileInfo* %141, %struct.cifs_sb_info* %142, i32* %144, %struct.cifs_aio_ctx* %145)
  store i32 %146, i32* %13, align 4
  %147 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %148 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %147, i32 0, i32 8
  %149 = call i32 @list_empty(i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %135
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %151, %135
  %153 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %154 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %153, i32 0, i32 6
  %155 = call i32 @mutex_unlock(i32* %154)
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %160 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %159, i32 0, i32 5
  %161 = load i32, i32* @cifs_aio_ctx_release, align 4
  %162 = call i32 @kref_put(i32* %160, i32 %161)
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %4, align 4
  br label %218

164:                                              ; preds = %152
  %165 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %166 = call i32 @is_sync_kiocb(%struct.kiocb* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %164
  %169 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %170 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %169, i32 0, i32 5
  %171 = load i32, i32* @cifs_aio_ctx_release, align 4
  %172 = call i32 @kref_put(i32* %170, i32 %171)
  %173 = load i32, i32* @EIOCBQUEUED, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %218

175:                                              ; preds = %164
  %176 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %177 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %176, i32 0, i32 7
  %178 = call i32 @wait_for_completion_killable(i32* %177)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %175
  %182 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %183 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %182, i32 0, i32 6
  %184 = call i32 @mutex_lock(i32* %183)
  %185 = load i32, i32* @EINTR, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %13, align 4
  %187 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %188 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 8
  %189 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %190 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %14, align 4
  %192 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %193 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %192, i32 0, i32 6
  %194 = call i32 @mutex_unlock(i32* %193)
  br label %202

195:                                              ; preds = %175
  %196 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %197 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %13, align 4
  %199 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %200 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %195, %181
  %203 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %16, align 8
  %204 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %203, i32 0, i32 5
  %205 = load i32, i32* @cifs_aio_ctx_release, align 4
  %206 = call i32 @kref_put(i32* %204, i32 %205)
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %202
  %210 = load i32, i32* %14, align 4
  %211 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %212 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load i32, i32* %14, align 4
  store i32 %215, i32* %4, align 4
  br label %218

216:                                              ; preds = %202
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %216, %209, %168, %158, %125, %79, %61, %40
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local %struct.cifs_aio_ctx* @cifs_aio_ctx_alloc(...) #1

declare dso_local i32 @cifsFileInfo_get(%struct.cifsFileInfo*) #1

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #1

declare dso_local i64 @iter_is_iovec(%struct.iov_iter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setup_aio_ctx_iter(%struct.cifs_aio_ctx*, %struct.iov_iter*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cifs_send_async_read(i32, i64, %struct.cifsFileInfo*, %struct.cifs_sb_info*, i32*, %struct.cifs_aio_ctx*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
