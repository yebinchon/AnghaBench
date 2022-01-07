; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_acl.c_btrfs_init_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_acl.c_btrfs_init_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_init_acl(%struct.btrfs_trans_handle* %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

14:                                               ; preds = %3
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = call i32 @posix_acl_create(%struct.inode* %15, i32* %17, %struct.posix_acl** %8, %struct.posix_acl** %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %14
  %24 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %25 = icmp ne %struct.posix_acl* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %30 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %31 = call i32 @__btrfs_set_acl(%struct.btrfs_trans_handle* %27, %struct.inode* %28, %struct.posix_acl* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %33 = call i32 @posix_acl_release(%struct.posix_acl* %32)
  br label %34

34:                                               ; preds = %26, %23
  %35 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %36 = icmp ne %struct.posix_acl* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %44 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %45 = call i32 @__btrfs_set_acl(%struct.btrfs_trans_handle* %41, %struct.inode* %42, %struct.posix_acl* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %48 = call i32 @posix_acl_release(%struct.posix_acl* %47)
  br label %49

49:                                               ; preds = %46, %34
  %50 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %51 = icmp ne %struct.posix_acl* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %54 = icmp ne %struct.posix_acl* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i32 @cache_no_acl(%struct.inode* %56)
  br label %58

58:                                               ; preds = %55, %52, %49
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %21, %13
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @posix_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @__btrfs_set_acl(%struct.btrfs_trans_handle*, %struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @cache_no_acl(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
