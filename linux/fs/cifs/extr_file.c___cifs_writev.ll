; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c___cifs_writev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c___cifs_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { %struct.cifsFileInfo* }
%struct.cifsFileInfo = type { i32 }
%struct.iov_iter = type { i32 }
%struct.cifs_tcon = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_aio_ctx = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.iov_iter, i32, %struct.kiocb*, i32 }

@ITER_KVEC = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"use non-direct cifs_writev for kvec I/O\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@cifs_aio_ctx_release = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*, i32)* @__cifs_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cifs_writev(%struct.kiocb* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifsFileInfo*, align 8
  %11 = alloca %struct.cifs_tcon*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  %13 = alloca %struct.cifs_aio_ctx*, align 8
  %14 = alloca %struct.iov_iter, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 1
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %21 = bitcast %struct.iov_iter* %14 to i8*
  %22 = bitcast %struct.iov_iter* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %24 = call i64 @iov_iter_count(%struct.iov_iter* %23)
  store i64 %24, i64* %15, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %29 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ITER_KVEC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @FYI, align 4
  %36 = call i32 @cifs_dbg(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %27, %3
  %38 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %39 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %40 = call i32 @generic_write_checks(%struct.kiocb* %38, %struct.iov_iter* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %4, align 4
  br label %211

45:                                               ; preds = %37
  %46 = load %struct.file*, %struct.file** %8, align 8
  %47 = call %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file* %46)
  store %struct.cifs_sb_info* %47, %struct.cifs_sb_info** %12, align 8
  %48 = load %struct.file*, %struct.file** %8, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %49, align 8
  store %struct.cifsFileInfo* %50, %struct.cifsFileInfo** %10, align 8
  %51 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %52 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.cifs_tcon* @tlink_tcon(i32 %53)
  store %struct.cifs_tcon* %54, %struct.cifs_tcon** %11, align 8
  %55 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %56 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %45
  %66 = load i32, i32* @ENOSYS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %211

68:                                               ; preds = %45
  %69 = call %struct.cifs_aio_ctx* (...) @cifs_aio_ctx_alloc()
  store %struct.cifs_aio_ctx* %69, %struct.cifs_aio_ctx** %13, align 8
  %70 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %71 = icmp ne %struct.cifs_aio_ctx* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %211

75:                                               ; preds = %68
  %76 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %77 = call i32 @cifsFileInfo_get(%struct.cifsFileInfo* %76)
  %78 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %79 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %78, i32 0, i32 11
  store i32 %77, i32* %79, align 8
  %80 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %81 = call i32 @is_sync_kiocb(%struct.kiocb* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %85 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %86 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %85, i32 0, i32 10
  store %struct.kiocb* %84, %struct.kiocb** %86, align 8
  br label %87

87:                                               ; preds = %83, %75
  %88 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %89 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %92 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %97 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %99 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %98, i32 0, i32 8
  %100 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %101 = bitcast %struct.iov_iter* %99 to i8*
  %102 = bitcast %struct.iov_iter* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 4 %102, i64 4, i1 false)
  %103 = load i64, i64* %15, align 8
  %104 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %105 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %120

106:                                              ; preds = %87
  %107 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %108 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %109 = load i32, i32* @WRITE, align 4
  %110 = call i32 @setup_aio_ctx_iter(%struct.cifs_aio_ctx* %107, %struct.iov_iter* %108, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %115 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %114, i32 0, i32 4
  %116 = load i32, i32* @cifs_aio_ctx_release, align 4
  %117 = call i32 @kref_put(i32* %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %4, align 4
  br label %211

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %95
  %121 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %122 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %121, i32 0, i32 5
  %123 = call i32 @mutex_lock(i32* %122)
  %124 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %125 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %128 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %131 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %132 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %133 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %132, i32 0, i32 7
  %134 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %135 = call i32 @cifs_write_from_iter(i32 %126, i64 %129, %struct.iov_iter* %14, %struct.cifsFileInfo* %130, %struct.cifs_sb_info* %131, i32* %133, %struct.cifs_aio_ctx* %134)
  store i32 %135, i32* %16, align 4
  %136 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %137 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %136, i32 0, i32 7
  %138 = call i32 @list_empty(i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %120
  store i32 0, i32* %16, align 4
  br label %141

141:                                              ; preds = %140, %120
  %142 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %143 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %142, i32 0, i32 5
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %149 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %148, i32 0, i32 4
  %150 = load i32, i32* @cifs_aio_ctx_release, align 4
  %151 = call i32 @kref_put(i32* %149, i32 %150)
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %4, align 4
  br label %211

153:                                              ; preds = %141
  %154 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %155 = call i32 @is_sync_kiocb(%struct.kiocb* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %159 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %158, i32 0, i32 4
  %160 = load i32, i32* @cifs_aio_ctx_release, align 4
  %161 = call i32 @kref_put(i32* %159, i32 %160)
  %162 = load i32, i32* @EIOCBQUEUED, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %211

164:                                              ; preds = %153
  %165 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %166 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %165, i32 0, i32 6
  %167 = call i32 @wait_for_completion_killable(i32* %166)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %172 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %171, i32 0, i32 5
  %173 = call i32 @mutex_lock(i32* %172)
  %174 = load i32, i32* @EINTR, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %16, align 4
  %176 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %177 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %179 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %9, align 4
  %181 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %182 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %181, i32 0, i32 5
  %183 = call i32 @mutex_unlock(i32* %182)
  br label %191

184:                                              ; preds = %164
  %185 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %186 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %16, align 4
  %188 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %189 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %184, %170
  %192 = load %struct.cifs_aio_ctx*, %struct.cifs_aio_ctx** %13, align 8
  %193 = getelementptr inbounds %struct.cifs_aio_ctx, %struct.cifs_aio_ctx* %192, i32 0, i32 4
  %194 = load i32, i32* @cifs_aio_ctx_release, align 4
  %195 = call i32 @kref_put(i32* %193, i32 %194)
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %191
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %4, align 4
  br label %211

204:                                              ; preds = %191
  %205 = load i32, i32* %9, align 4
  %206 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %207 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %204, %202, %157, %147, %113, %72, %65, %43
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #2

declare dso_local i32 @cifs_dbg(i32, i8*) #2

declare dso_local i32 @generic_write_checks(%struct.kiocb*, %struct.iov_iter*) #2

declare dso_local %struct.cifs_sb_info* @CIFS_FILE_SB(%struct.file*) #2

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #2

declare dso_local %struct.cifs_aio_ctx* @cifs_aio_ctx_alloc(...) #2

declare dso_local i32 @cifsFileInfo_get(%struct.cifsFileInfo*) #2

declare dso_local i32 @is_sync_kiocb(%struct.kiocb*) #2

declare dso_local i32 @setup_aio_ctx_iter(%struct.cifs_aio_ctx*, %struct.iov_iter*, i32) #2

declare dso_local i32 @kref_put(i32*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @cifs_write_from_iter(i32, i64, %struct.iov_iter*, %struct.cifsFileInfo*, %struct.cifs_sb_info*, i32*, %struct.cifs_aio_ctx*) #2

declare dso_local i32 @list_empty(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @wait_for_completion_killable(i32*) #2

declare dso_local i64 @unlikely(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
