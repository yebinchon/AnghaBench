; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dir.c_v9fs_dir_readdir_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dir.c_v9fs_dir_readdir_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.p9_fid* }
%struct.p9_fid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dir_context = type { i32 }
%struct.p9_rdir = type { i32, i32, i64 }
%struct.p9_dirent = type { i32, i32, i32, i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"name %pD\0A\00", align 1
@P9_READDIRHDRSZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"returned %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @v9fs_dir_readdir_dotl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_dir_readdir_dotl(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_rdir*, align 8
  %10 = alloca %struct.p9_dirent, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @P9_DEBUG_VFS, align 4
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = call i32 (i32, i8*, ...) @p9_debug(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.file* %12)
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.p9_fid*, %struct.p9_fid** %15, align 8
  store %struct.p9_fid* %16, %struct.p9_fid** %7, align 8
  %17 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %18 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @P9_READDIRHDRSZ, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.p9_rdir* @v9fs_alloc_rdir_buf(%struct.file* %24, i32 %25)
  store %struct.p9_rdir* %26, %struct.p9_rdir** %9, align 8
  %27 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %28 = icmp ne %struct.p9_rdir* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %122
  %34 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %35 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %38 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %33
  %42 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %43 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %44 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %48 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @p9_client_readdir(%struct.p9_fid* %42, i64 %45, i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %123

55:                                               ; preds = %41
  %56 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %57 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %60 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %33
  br label %62

62:                                               ; preds = %112, %61
  %63 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %64 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %67 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %122

70:                                               ; preds = %62
  %71 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %72 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %75 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %78 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %76, %80
  %82 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %83 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %86 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = call i32 @p9dirent_read(%struct.TYPE_2__* %73, i64 %81, i32 %88, %struct.p9_dirent* %10)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %70
  %93 = load i32, i32* @P9_DEBUG_VFS, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 (i32, i8*, ...) @p9_debug(i32 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %123

98:                                               ; preds = %70
  %99 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %100 = getelementptr inbounds %struct.p9_dirent, %struct.p9_dirent* %10, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.p9_dirent, %struct.p9_dirent* %10, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strlen(i32 %103)
  %105 = getelementptr inbounds %struct.p9_dirent, %struct.p9_dirent* %10, i32 0, i32 2
  %106 = call i32 @v9fs_qid2ino(i32* %105)
  %107 = getelementptr inbounds %struct.p9_dirent, %struct.p9_dirent* %10, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dir_emit(%struct.dir_context* %99, i32 %101, i32 %104, i32 %106, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %123

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.p9_dirent, %struct.p9_dirent* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %116 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.p9_rdir*, %struct.p9_rdir** %9, align 8
  %119 = getelementptr inbounds %struct.p9_rdir, %struct.p9_rdir* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %62

122:                                              ; preds = %62
  br label %33

123:                                              ; preds = %111, %92, %53, %29
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local %struct.p9_rdir* @v9fs_alloc_rdir_buf(%struct.file*, i32) #1

declare dso_local i32 @p9_client_readdir(%struct.p9_fid*, i64, i32, i32) #1

declare dso_local i32 @p9dirent_read(%struct.TYPE_2__*, i64, i32, %struct.p9_dirent*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @v9fs_qid2ino(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
