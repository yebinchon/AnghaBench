; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_acl.c_v9fs_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.p9_fid = type { i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_acl_chmod(%struct.inode* %0, %struct.p9_fid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @S_ISLNK(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %19 = call %struct.posix_acl* @v9fs_get_cached_acl(%struct.inode* %17, i32 %18)
  store %struct.posix_acl* %19, %struct.posix_acl** %7, align 8
  %20 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %21 = icmp ne %struct.posix_acl* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__posix_acl_chmod(%struct.posix_acl** %7, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %22
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %35 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %36 = call i32 @set_cached_acl(%struct.inode* %33, i32 %34, %struct.posix_acl* %35)
  %37 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %38 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %39 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %40 = call i32 @v9fs_set_acl(%struct.p9_fid* %37, i32 %38, %struct.posix_acl* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %42 = call i32 @posix_acl_release(%struct.posix_acl* %41)
  br label %43

43:                                               ; preds = %32, %16
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %30, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.posix_acl* @v9fs_get_cached_acl(%struct.inode*, i32) #1

declare dso_local i32 @__posix_acl_chmod(%struct.posix_acl**, i32, i32) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @v9fs_set_acl(%struct.p9_fid*, i32, %struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
