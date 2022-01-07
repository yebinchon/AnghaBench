; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_super.c_v9fs_kill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_super.c_v9fs_kill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.v9fs_session_info* }
%struct.v9fs_session_info = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"exiting kill_super\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @v9fs_kill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v9fs_kill_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.v9fs_session_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 0
  %6 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %5, align 8
  store %struct.v9fs_session_info* %6, %struct.v9fs_session_info** %3, align 8
  %7 = load i32, i32* @P9_DEBUG_VFS, align 4
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = call i32 (i32, i8*, ...) @p9_debug(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.super_block* %8)
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call i32 @kill_anon_super(%struct.super_block* %10)
  %12 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %13 = call i32 @v9fs_session_cancel(%struct.v9fs_session_info* %12)
  %14 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %15 = call i32 @v9fs_session_close(%struct.v9fs_session_info* %14)
  %16 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %3, align 8
  %17 = call i32 @kfree(%struct.v9fs_session_info* %16)
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  store %struct.v9fs_session_info* null, %struct.v9fs_session_info** %19, align 8
  %20 = load i32, i32* @P9_DEBUG_VFS, align 4
  %21 = call i32 (i32, i8*, ...) @p9_debug(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local i32 @kill_anon_super(%struct.super_block*) #1

declare dso_local i32 @v9fs_session_cancel(%struct.v9fs_session_info*) #1

declare dso_local i32 @v9fs_session_close(%struct.v9fs_session_info*) #1

declare dso_local i32 @kfree(%struct.v9fs_session_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
