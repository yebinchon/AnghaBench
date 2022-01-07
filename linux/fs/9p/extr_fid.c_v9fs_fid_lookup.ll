; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_v9fs_fid_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_v9fs_fid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.dentry = type { i32 }
%struct.v9fs_session_info = type { i32, i32 }

@V9FS_ACCESS_MASK = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @v9fs_fid_lookup(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.v9fs_session_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = call %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry* %7)
  store %struct.v9fs_session_info* %8, %struct.v9fs_session_info** %6, align 8
  %9 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  %10 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @V9FS_ACCESS_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %15
    i32 130, label %15
    i32 131, label %17
  ]

15:                                               ; preds = %1, %1, %1
  %16 = call i32 (...) @current_fsuid()
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %6, align 8
  %19 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @INVALID_UID, align 4
  store i32 %22, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %17, %15
  %24 = load %struct.dentry*, %struct.dentry** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.p9_fid* @v9fs_fid_lookup_with_uid(%struct.dentry* %24, i32 %25, i32 %26)
  ret %struct.p9_fid* %27
}

declare dso_local %struct.v9fs_session_info* @v9fs_dentry2v9ses(%struct.dentry*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local %struct.p9_fid* @v9fs_fid_lookup_with_uid(%struct.dentry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
