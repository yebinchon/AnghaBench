; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dir.c_v9fs_dir_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_dir.c_v9fs_dir_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.p9_fid* }
%struct.p9_fid = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"inode: %p filp: %p fid: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_dir_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.p9_fid*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  store %struct.p9_fid* %8, %struct.p9_fid** %5, align 8
  %9 = load i32, i32* @P9_DEBUG_VFS, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %13 = icmp ne %struct.p9_fid* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %16 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ %17, %14 ], [ -1, %18 ]
  %21 = call i32 @p9_debug(i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.inode* %10, %struct.file* %11, i32 %20)
  %22 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %23 = icmp ne %struct.p9_fid* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %26 = call i32 @p9_client_clunk(%struct.p9_fid* %25)
  br label %27

27:                                               ; preds = %24, %19
  ret i32 0
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.inode*, %struct.file*, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
