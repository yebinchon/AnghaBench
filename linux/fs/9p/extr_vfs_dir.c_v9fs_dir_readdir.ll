; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dir.c_v9fs_dir_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dir.c_v9fs_dir_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.p9_fid* }
%struct.p9_fid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dir_context = type { i32 }
%struct.p9_wstat = type { i32, i32 }
%struct.p9_rdir = type { i64, i64, i64 }
%struct.kvec = type { i64, i32 }
%struct.iov_iter = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"name %pD\0A\00", align 1
@P9_IOHDRSZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"returned %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @v9fs_dir_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_dir_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_wstat, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_fid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.p9_rdir*, align 8
  %12 = alloca %struct.kvec, align 8
  %13 = alloca %struct.iov_iter, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @P9_DEBUG_VFS, align 4
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = call i32 (i32, i8*, ...) @p9_debug(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.file* %16)
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.p9_fid*, %struct.p9_fid** %19, align 8
  store %struct.p9_fid* %20, %struct.p9_fid** %9, align 8
  %21 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %22 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @P9_IOHDRSZ, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.p9_rdir* @v9fs_alloc_rdir_buf(%struct.file* %28, i32 %29)
  store %struct.p9_rdir* %30, %struct.p9_rdir** %11, align 8
  %31 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %32 = icmp ne %struct.p9_rdir* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %144

36:                                               ; preds = %2
  %37 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %38 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %12, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  br label %43

43:                                               ; preds = %36, %143
  %44 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %45 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %48 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %43
  %52 = load i32, i32* @READ, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @iov_iter_kvec(%struct.iov_iter* %13, i32 %52, %struct.kvec* %12, i32 1, i32 %53)
  %55 = load %struct.file*, %struct.file** %4, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load %struct.p9_fid*, %struct.p9_fid** %56, align 8
  %58 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %59 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @p9_client_read(%struct.p9_fid* %57, i32 %60, %struct.iov_iter* %13, i32* %8)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %144

66:                                               ; preds = %51
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %144

70:                                               ; preds = %66
  %71 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %72 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %76 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %43
  br label %78

78:                                               ; preds = %131, %77
  %79 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %80 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %83 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %143

86:                                               ; preds = %78
  %87 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %88 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %91 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %94 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %98 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %101 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = call i32 @p9stat_read(%struct.TYPE_2__* %89, i64 %96, i64 %103, %struct.p9_wstat* %7)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %86
  %108 = load i32, i32* @P9_DEBUG_VFS, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i32, i8*, ...) @p9_debug(i32 %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %144

113:                                              ; preds = %86
  %114 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %115 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %7, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %7, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @strlen(i32 %118)
  %120 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %7, i32 0, i32 0
  %121 = call i32 @v9fs_qid2ino(i32* %120)
  %122 = call i32 @dt_type(%struct.p9_wstat* %7)
  %123 = call i32 @dir_emit(%struct.dir_context* %114, i32 %116, i32 %119, i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %6, align 4
  %127 = call i32 @p9stat_free(%struct.p9_wstat* %7)
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %144

131:                                              ; preds = %113
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.p9_rdir*, %struct.p9_rdir** %11, align 8
  %135 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %140 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %78

143:                                              ; preds = %78
  br label %43

144:                                              ; preds = %130, %107, %69, %64, %33
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local %struct.p9_rdir* @v9fs_alloc_rdir_buf(%struct.file*, i32) #1

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @p9_client_read(%struct.p9_fid*, i32, %struct.iov_iter*, i32*) #1

declare dso_local i32 @p9stat_read(%struct.TYPE_2__*, i64, i64, %struct.p9_wstat*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @v9fs_qid2ino(i32*) #1

declare dso_local i32 @dt_type(%struct.p9_wstat*) #1

declare dso_local i32 @p9stat_free(%struct.p9_wstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
