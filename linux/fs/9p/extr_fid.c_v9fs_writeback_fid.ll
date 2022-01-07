; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_v9fs_writeback_fid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_fid.c_v9fs_writeback_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.dentry = type { i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @v9fs_writeback_fid(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_fid*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %7 = call i32 @v9fs_fid_lookup_with_uid(%struct.dentry* %5, i32 %6, i32 0)
  %8 = call %struct.p9_fid* @clone_fid(i32 %7)
  store %struct.p9_fid* %8, %struct.p9_fid** %4, align 8
  %9 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %10 = call i64 @IS_ERR(%struct.p9_fid* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @p9_client_open(%struct.p9_fid* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %21 = call i32 @p9_client_clunk(%struct.p9_fid* %20)
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.p9_fid* @ERR_PTR(i32 %22)
  store %struct.p9_fid* %23, %struct.p9_fid** %4, align 8
  br label %25

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %19, %12
  %26 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  ret %struct.p9_fid* %26
}

declare dso_local %struct.p9_fid* @clone_fid(i32) #1

declare dso_local i32 @v9fs_fid_lookup_with_uid(%struct.dentry*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_open(%struct.p9_fid*, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
